Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F028F4
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746344394; cv=none; b=eQh6dSswBpRAnjUca95DEugGqxyceIM7XHmR6/sDuCqPQL15Wcy02O2fris0G9EQbOIUhLxEYmRr/HQ5HToPjgWTQeHIGbUan+3e9DNBwW+cdS3SejqgepMFg2asPYOjTWqdnWut37VVXAfaxPf+RptVj/9HBIyrmt2cIiaAM78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746344394; c=relaxed/simple;
	bh=VV3CLFJERswTRXqSXXUSorGc+o9v9SglWTdOI8CMzwE=;
	h=To:Subject:From:Message-Id:Date; b=pFZfDd3TuTRu1PxZbrbrfDcg0qBtipcHXp565dyIfM2IvNqXeTpCRr5Kr58QVciveodPB8+ygFZW5k1Yq3R9V4rq0+VO0AyjdoDASf2/Ec2UMjpeQO5kNCRyeiRw8a8wi0fQx4bt5D9PQFAZetDQ1yRa++aAJclVJ/HtnqiMyxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy1e3Cen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy1e3Cen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4215C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746344393;
	bh=VV3CLFJERswTRXqSXXUSorGc+o9v9SglWTdOI8CMzwE=;
	h=To:Subject:From:Date:From;
	b=Dy1e3CennG6LrsoaIu5X0GrbdKfwnoBuQd6RT6dey7BdCFyarDrZM6IObLUk3THcf
	 X0koDWc8qQWTqVrE9CTcIYdG4fjpWtLhgRkKx6pHQfQXn28NWuT3eEeCXLPjQZqKfD
	 O1tBViOF5fYjVk23ySCoegW0ulfZV9TrudY1Py2NmM3yjHemji2BIWadhm3soBp7vC
	 M0Yb8j1vlkZs19tgnCYIOnF20xQfuvW4/Yh76itKR13hSMIBz0YXc3dmEBbcH1M0Wz
	 i7vq0/Qk+rgjtw8htSyhFt3UlGGMBQdNy/KytO12eeG/9EhWNPtGWp7n0DKXx3waHq
	 JrYGYu/9DJhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91875C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634439357.31877.5002139916610948295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0246bece8119d2861b8196b5e1cb81ac87d8da3b88912f631fdfb76ec5117da5
Date: Sun, 04 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746344393
