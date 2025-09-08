Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1875A2FABFE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757329794; cv=none; b=X9EjF8cY0DS0lUKqgXLGmj7lgu354OTl6VGjVTmNM4NMabVLn3aDqK7ldydpvNQ89cq7dkDQnk9i1W83H6UnotM3CyHxhPighLhQI/QGK1RAIWidOUAV1Xsw9X0r+duoIUDaBr8X5pAskGO7c7VZc1BNChfvQVpdlNqON+2wic4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757329794; c=relaxed/simple;
	bh=wvSCQ4S6ORolm8bhub989lwyGLEs1fknJRCUeuLvJ4w=;
	h=To:Subject:From:Message-Id:Date; b=r4oCP80SuYuydipVWAktPLMlbgUySdhoTMlsv04G3rXHaJYla6qyM+sv7xhSl2DaXV+C8ixYukCdY+GjbnYCFJldroCXvy4BYFTMmIZ0EzHx1Sq03WRDHi43+bHSf+pRuKIV1DEd6g+LQeeBtoIZcrGVVi2oBnu4lfgVh2Fglgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CicNthKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CicNthKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A551EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757329793;
	bh=wvSCQ4S6ORolm8bhub989lwyGLEs1fknJRCUeuLvJ4w=;
	h=To:Subject:From:Date:From;
	b=CicNthKoCMAtTBo2NZiaU94N+Fk5BtWt3R+r8zrT0DOBFlRtAmpkx34LyPtNt+gJW
	 kudWOc1V7xT6niV+fA7IgIfPilA7wbe+V7YESlnns9k2kS3r+IHlvalEJFnu+H9PHx
	 7ftnk0HhCuV+qXXwpxxTIM7zP4NuMVLyb7PmxB1LekY0I16CvnvdSZU95CCNrHaTR/
	 65xq2qSSL7LJjcvcacVzrWDaWcZQtFQQBhUiGdmyc+LCDKAEf1gze/XzH+lB8c8pK3
	 QctBjDqzRn1+V+fkdmf0flMLWL96axUgIZvXcQwaM5NxAWjm3TjeyyeccoQM4/6KqG
	 tXN0YeK222esQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3ACA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732979358.16742.16612241474977168106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c953f360d5eda05813ccb65709858b63369edcc859dc5de5f5a959624fd71d5
Date: Mon, 08 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757329793
