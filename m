Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522B3225D0
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714837343; cv=none; b=FDhrpZak58aK/fMPmToKMoF+dhj26sRGtRKsZ8Gus91zXgDJIVQ8Lwb41UoilWf0POzQtfo7MPtggDI8e6djjagUTncxxj41qdEcCU4AQ00wVdvMHeyJtGdVaK3hk4bGaCah/rfPkgTVMw4MyiLwqtP9VwDWQzpllIIfy/Tk+Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714837343; c=relaxed/simple;
	bh=rd9FVSFBAAiR+airksJjp3UuuBiu40LHxIFRwd3yqN0=;
	h=To:Subject:From:Message-Id:Date; b=gxHdhjXKLGAV97rdHZqGa/AjM798QbgtIQKWvMzB1sujdMueLlCbKmUad2LwJh5iJxb9HkZmYwYSIlkIiea3+Ff8AROdlD4Uv+49nqAARCDV8ZOlZOZBrtFNEvHzSj0MlC1G/uLY2yNqtXt4qXWqUkg2dBWobB5bIyBz2kPy6ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5Hi5HzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5Hi5HzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A37C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714837342;
	bh=rd9FVSFBAAiR+airksJjp3UuuBiu40LHxIFRwd3yqN0=;
	h=To:Subject:From:Date:From;
	b=W5Hi5HzJHvj0CC+8xvRpd+b4LIo8OjjDI11WuFmM8DA3JyY7ZSUzkZ1HRUYRpEstz
	 l6gopM6+n610SgBPADtOLo1ZDN/OoMMNntv2W4sfNjQU3Y5OQHAbTZ6RdkaN1mVFgD
	 atOTSk8u8hxEmbzTQ3QfmEh7w9DRCEZFHSzcvNN7+ToSqkWbqEbxcRFG+2QMFEoURS
	 ldBn6YezW6KHp7vg7bsRbN4bgm7CIzzbMCK8HIzyEGE01axBR8cX97klm9dgmty+wb
	 RjRuSA0IbrXwOHFzNsalThLl5ZEKvNyLz4l3JwSekpORZIw/aoxSAKGyhpRWdxDQom
	 hUOgLentXtc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB82EC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483734275.3002.7825726249415876348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea13bebffcc09d05059ec57e8f7ed2cd6bea78b1139e4950373ace8ecf6425b0
Date: Sat, 04 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714837342
