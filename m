Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAB7202F71
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791007234; cv=none; b=TixIH5EHAEq0Mqsa4F0B4PgWJry9mILsIZCFWoBcy3N689r6hwrArbocSCRJ4Jk68Gyh5MitRJOKzwigD7wdOSuFp+r1pFVwl7wARMbJ+Qp5jUEsMgq8Hw6eT+FsBVlHo+3si7JRFRHt9xiNxDaheKweAecdsV6jGd1fWcPhtLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791007234; c=relaxed/simple;
	bh=dWBoudNP+97uRA+F7F68UA0yBcq7fkZeJaxLAS48aeY=;
	h=To:Subject:From:Message-Id:Date; b=g6fmYKlN9URvpntCPVrq6rRyJ2Fzs+y2auGlkVwxP1qBxTBGodTb84N9qd82uo/RkyCnjt2D6Wc2MhdlHRpUPYxYYCrbyhycioZ7JAbHHWBGWqc5zGDQ0xsA5aulvKLlHufuBroeJ3yZ8oIu9QaAVoRf9j4VLBTbottSlfJi8OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKmMvc8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKmMvc8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CFBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791007233;
	bh=dWBoudNP+97uRA+F7F68UA0yBcq7fkZeJaxLAS48aeY=;
	h=To:Subject:From:Date:From;
	b=iKmMvc8sObor8qMvfcx8LFc2m+ZuJHhudU5udUdt2junhAn0DUnxqvO7MFLINOzDe
	 c2eIKGdXUT6/Y1OCfWbxmOTKi6htub50YvC6pc215Dg+wJu0K+xE6wE3eThss+FCUt
	 5UM6rksuqqjVrqvytOYlnuMXNzA882sTocS0xpbOXxj7cFYcoGOfjnHSGO+KJnsjqS
	 ZVjyKV9BHYfQNXHpkRyNSMoh6DJ0Q15Hi9yvkw6vbzZnvnCWHsS+FRn1DQHVrz+hdC
	 9yIVgbk5cUmLBe6SeiFsHnpl96zUlV5ZexAgiJZ2rIpbyN0tisppcc7NLyIPruO/sA
	 tDlcp93VKLVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BE4CA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100723369.755.8768704241735704705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcbd102e3bbb4b03f1e412cc9d2a52a19d7a82d81b993d005e29ec81edf5c71
Date: Sat, 03 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791007233
