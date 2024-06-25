Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5855014A0B8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719333203; cv=none; b=efFv8fC/wRwA8PZSpiPxbIH98z2VGvrufbItHokq7YupKEmv1ZOiO0XeJVmVCImrDCoSJCP/gNKl4IcDWAwscAGv0B8QsStRrCy2yz5BL0X64x7Nac/qki3VjO0UXVRkjZs3wIjnW3dXrlPAxJYk7tyn1FR6RxOopo9b7uLjOg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719333203; c=relaxed/simple;
	bh=3H058593QJhchnN/DDxYjYFjUb1rP12HqH6wv+tHs5c=;
	h=To:Subject:From:Message-Id:Date; b=LRseiGq33ahKOy+UzWKlSblEXfLdfaHFoT/YqXoIhfSYxilE5yFrn5GXX4c3kkwsAxpEWTXSP/wbyEGhEi0DOfP+qtnbj+1LQsUGqXEAy4XE4Np8fCeifTChYShttjSLI2u4wbZS86jTyCvQm0ka3++sB6v2RInaufMJAv3uVHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck4mfcVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck4mfcVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F8DC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719333202;
	bh=3H058593QJhchnN/DDxYjYFjUb1rP12HqH6wv+tHs5c=;
	h=To:Subject:From:Date:From;
	b=Ck4mfcVWXkLPLdZR2VuDi2Y+k7bQPOK4HkWHRc310laFol/bVDpZnR8MB/31+3pad
	 Jf85WAtmgWjPhRlq6PM81iVCWiwGIwC3z2EHfNfWukZHU7PU9g32oXm2ySzSBnaB4c
	 qaMeoabiTKsefGLlhvNokX+fzzt1LFxGSnbvWtAo2CP+ts8T/ep3e9DgGlpmvCMXfA
	 rSaSFpdg0jUlRWjzMkLpa5Du/e1XPHAwnbvcm2ZMu7/BznFKTbBIPJCA4nm5xOhHRI
	 kfuJS2VGuZLUErSiDokX7Y0QX2yQQlijAOllGuwK6BIC24yrklnrToPPm+BEEHTj1z
	 iCLbYjCZWTFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14F2C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933320276.25821.5855034244357893063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b89d0aaf5dae0f1c569ee5cda32545ce26464743c49eabc97e31ea6d07cd0b
Date: Tue, 25 Jun 2024 16:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719333202
