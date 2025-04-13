Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540774503B
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744542594; cv=none; b=U+j9p9kBkGc4r2oAkCK54sVUcu5s5zcxF9ucZ+eQxKIUtcTygwD156E1A/i9u/Md8lGcuflMiLqxAtAXJt2puO/uw+fFHJk9Ky7QcHcZE8HR3fJ15lYHxnx0rgiUQlFRbkfuzryMJQbbtRyjCi8+pLVY4+NeCc2nHPhd6nnvy/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744542594; c=relaxed/simple;
	bh=7c/wjwjOo64yHRtbylu7cEjgizqJB0VirkNy0g6PVo4=;
	h=To:Subject:From:Message-Id:Date; b=MxfNYP+yHlY8eITDaNzg/k5XeEgJObe18Q50VLdDnFtQoe30xcHFOXemqqTTMmdT2Jw3RdfV9ACKFwMr5j6pXNPvE5SCSsNjSDpOH/7F+QWsKwKXvNlnQlTZe7BqTKntV/5GNeOaqgG9h5HzylMInjF/JKua5NUGk8lJx9kATCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AussfAa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AussfAa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC717C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744542593;
	bh=7c/wjwjOo64yHRtbylu7cEjgizqJB0VirkNy0g6PVo4=;
	h=To:Subject:From:Date:From;
	b=AussfAa7u49YXlYgTAVs4pHirXA5Sq2NdW6o63ik58h3VD5OdPYwbuE3Oj08uuoo7
	 QflCjbasEBMIJHad1xqxtgIbgFi3H+326Ha7/1lWqOe6H2Ib+I0sQqoyKRE+riZDB0
	 dUxZUCkj+6/Ok55/SRgQrDNThl32uri8JyMpY5094pe9Dc3bkilHpojc6T/9g75Usy
	 mzm/jmTPa0SFeCgK/RC0An51Q+Q+qkV5at4yVsIx6pmAb+GhdRlK/cesK7N/N5gbJy
	 x5EQ9BkX2jP5XETgVMnKRl4hDwWoIDY+GhwmS9MSGejl7nYgf98V12GGID5MNxCZCZ
	 3w8joIowXXjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60C4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454259365.10521.4312306648194344892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11ba22c66ea777ba1d89ee948896b743fd0d5c623bdd5961c5b2d58645a6550
Date: Sun, 13 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744542593
