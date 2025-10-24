Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38020125A9
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761280794; cv=none; b=iZA5MxUGEMElkRCkrx8jg0pikqIUypmbykBfOhaKr+OXIL29K4HQa97i749xSV/U7qPHFWiTY9aJrLth19lk0vw4BmUaBPtEpjR2S9FygyeO1K/O8iWLOVCLwANSF+1HMDMhx2JoHjUH/ewnJKCcQWLAYNSsysS2ziMUXE0hQIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761280794; c=relaxed/simple;
	bh=cOWzrTGdFirkI/TDewDx4fiIP0XtdrTY3DesGob2ggI=;
	h=To:Subject:From:Message-Id:Date; b=fZzbWeCv8cX4QOb2HfgQ/zIskjLhlofzb8wIJTQX9j6VE/8DKM6BdiI5x/f6ctBnN0X2U15ehuBuQkUxt4S4/7L6TKrZliFMLs0Dvzco+UFkwJkdlMfmnR2RaMcIJU46YgOhH9p58M8/AzcilmqvOBjCmuzhN24I7KfrzXW532M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRhSeYoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRhSeYoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3919C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761280793;
	bh=cOWzrTGdFirkI/TDewDx4fiIP0XtdrTY3DesGob2ggI=;
	h=To:Subject:From:Date:From;
	b=VRhSeYoLhrSlFUnMCsrEIm5Z+80q/qqglxx8sP98rYSHlQnjphjwBRm9hxOtfu/z8
	 oxnr1b1TkaZaAXA2n6nypH1SRbH7gsgBs64cMS1TAxQ43KTKfbCK2xyJA8UiqQxiOY
	 kp9IVlGMKNXIT6aR4OLdy+6gbITzRvC9nOgQ8uPyviTXjPqvmNTXRMtcDIWnhC5Ksa
	 gnZsNVHoa+/EgZAdKaRCRtcPz0dIujsJbYsvXW9yy7GlWccuR7YWo2sPdaDskfm7hd
	 8C+A35iz/g4nvNJB5aPqetDFkih+2Kr8U9Lg9lbsD2DQuILzMlYl+o/w5+QAGhm2X+
	 EWYqkYit/V3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92066CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128079357.29097.14439559037702382775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0daa2cc8f7f9327171b5d731521088b59a3a29623c87c1f7ffccae0a8dba0d30
Date: Fri, 24 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761280793
