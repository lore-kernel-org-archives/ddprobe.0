Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB4E7E1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735776954; cv=none; b=BI4A2czxmWITAB29yygVzbHr4j9RWkxb8mIN+SkFejSnpe9ONN4DBGnWuIShaNLIWXY/lNaBDE20lp+5vkbQAcHyDEO5TYZ2G7BhwyiOs3WgsLeAola0X7KLTlCFquKyQssEJQFvUQTQIFS+WYVSxcPqqbOh+7Uuge+r64fOiY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735776954; c=relaxed/simple;
	bh=4SAeCXy7bnWHC7+YhMpqi8jhL6i+yIlSu6gWoSqQb4M=;
	h=To:Subject:From:Message-Id:Date; b=Wue6Bmejh4VBj4gcFJyizWBDvK6yorzar2xx1o+J8oqYwbe+Z+By2ouDXe1pKYVSdUBACbLLTNnByCfk+DlkETIjolkqKjr1478ojcGZ9Y97HJYv2ErSaj1XwtRGMd5+kylANXAnkrPgGy1phRqnxO8Ft5MjDiUPbIs2BCJVaRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbmdwndg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbmdwndg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8EEC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735776953;
	bh=4SAeCXy7bnWHC7+YhMpqi8jhL6i+yIlSu6gWoSqQb4M=;
	h=To:Subject:From:Date:From;
	b=tbmdwndgo7TgUFxH5Tusk2cmY7P8HV3qczdwg6ql2Ybt/5l/ar6lxCb5CyRV3+El9
	 zWKS85/mjNcaoqOQPjfMLdXUo0BJZqyhj/LZ0DWqngC3PgIHqkDbC5BgqjmNs4OI2U
	 ULwJwQqfd9oVlQUqr1y2zW5qyfOIkSVxQPZbYeb3el5tLw0NHfvP8HF3XCGpuYuVEc
	 g/p5aAhR4rZHbG0jfFsvsLHTberHdU0wf3QACp9BAlxjCN9YDAjlc3LGiDx+RYSxBE
	 chPrTpw67Vvj+uRSAWYQ9RV7SSCiyJOY81dV9mvF5QTjcZqMSgp/TrHSJqq0bkxW6k
	 JAKg4oY5inXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7F1E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577695360.31491.5066723603522052575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb337c92d36091231a2ae144adb8a1a2b566fdf101b98f0160b9263bb30904a
Date: Thu, 02 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735776953
