Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B0020E31C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729298754; cv=none; b=laGkpRfiq+rMoEqpNzsRuohTxeT60l+icKo8aPx2p+ELfPuLd6p3UA9y0srn4xvdJ1NcuWUJKb8nFZea0BDJtHJOspBXvlwYVRMWQYGzcglDtGTXA/WOZL0eDdac5zC/egXvCDTZpBDWUTrS7VJO44CMkU+bAbrygLJ3AESD4IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729298754; c=relaxed/simple;
	bh=6n3DKgzW/rWLdpr9uB1Y63FOwuMovH1yVkzMtSGuFE8=;
	h=To:Subject:From:Message-Id:Date; b=mmhZmw8yaNUn/pDQnJarr+BrsaN6RazfQe0q7T4hd8W/NFB4hpCe0fw9NCkGx85YBBIcq2/qUcm5C/MIfdzpJJUkhY5MN231bPUNmwYhJye+fSllVJFeCgNHAmMtGT34fL3D4CNQnFldLx0D+d9G2Ny6NCPlkFr+DSToGx8sjzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rt3+agP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rt3+agP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED47C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729298753;
	bh=6n3DKgzW/rWLdpr9uB1Y63FOwuMovH1yVkzMtSGuFE8=;
	h=To:Subject:From:Date:From;
	b=rt3+agP4qwnrodbJiyL9x/ku6yA40nkEOIYOQpBvJkHGMzaByjZ5u2bftmPIrzK5k
	 OCoFXF1nQPXT+tMP3oQoN53JD6oKnk3clWFNBS0zGpwp7bbDfoyK9QwXsy0mIPyKPy
	 +/rA1dNTcFtBHe663la5fRYobasWrSH9VQxkoz5HFkbYdx0IvBAzZTnU5a5/KpxRpE
	 yepp2+mlK+npFGGcqQ/X7xSYj5x2M25Mm0UAw26tIdmEn/K3UnneCpR8MJVfRGgZPa
	 gticWNWoWfi5WznoliEv1FSM0nmQwygBq0Qae2Qnm6D8IBSoiML45TVrZNyOAglIW+
	 SC4ZcZ2gPcrpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA0CD3E194
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929875362.17387.9277163659120736867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e3ab769ae7e4218cd46963ab7931dcee716c6df86a884e4a098cd19961b745
Date: Sat, 19 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729298753
