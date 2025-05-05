Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2962C1D90AD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448794; cv=none; b=KCWpLTdlnaFshxKLu6oVAxMY23U5cFREQqZd3tZTgtGy3GDLpm27nj+0wCCi7dBd+NeMNYaCC6fM1VB6PLUL5ojQJvD2epFEnSF+V/1TaLSUNnJ8tbrjlGpUo6JrsowHQ+sP5nK3lKXyDcq8qqfRrimE+Wh8XlXSJgFIiiC2FsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448794; c=relaxed/simple;
	bh=auFeddHnZ+sHh5gsnHKOtSEjDofoR+EEnTT6blWESwc=;
	h=To:Subject:From:Message-Id:Date; b=ZFkKxZsrCxShkk1ClC5htA5/y/D8+b+1wTFfNslr3s23ffKeD0m8HdVoQGUaoPga6A4ohdzWWrmbWHprbFqaAwwCVbRhdBltzQTt/snkBZNRnzcFbYf0DSP8PtFa7flzBFz6OdIU1n3Sx1LHPNWiYVFjiRA4dhjkaDR9F21Z/As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQm0hWOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQm0hWOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD31C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746448793;
	bh=auFeddHnZ+sHh5gsnHKOtSEjDofoR+EEnTT6blWESwc=;
	h=To:Subject:From:Date:From;
	b=LQm0hWOFuyiZTNWucaiNYlxX1pKLZF9dMJnEla0lix+eJ3v0PoGHObRU99W66mdkm
	 HhVznLHLYItWhtyWxJrkj73gPBgaSpSCI9wpP3kMI9zItNkS6KZAM9CIEEoByR/22T
	 sHSA4adT7A8I3JxISO7glyAAtFkTbj6UiETLZCCkkuIMT5VT9sMOa+wNFDVJnzBp+b
	 SzMfZSHO1DcmxNigZEIyBg6oegqL7qZoV3EkRvSKKdhsynPUaXvu7pACZfZJNycXMu
	 KLrJtFK9vl+vKG3OU7aE/rX3SlZdJmB9G3yx5w4iZ/m8nxjsf8zN7JTA7BbAQJz8cb
	 hstjmNj9tlNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE54C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644879357.17008.7126162657629795188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4773e19da6c353f459b7aa5f6d803ed2a39c777b52684b583a0154f961d0dc1
Date: Mon, 05 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746448793
