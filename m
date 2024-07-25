Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C6D26286
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721927154; cv=none; b=cKIEEkoBO3SKkIYbhT67p3/fpwbCZtRvrstsXlfKgW+nFdhDifQo4toYiIsNJPjAsvwEr1/SgCaDtn3XfJ2WqF1KkWETNX+5x9U/LiQDqW51uDXETCIuRR6hcynWJUrHb5ClRqzyaZCdKhXC6Eg2oMWk+6dcAVTSjCMlV5r/xjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721927154; c=relaxed/simple;
	bh=x297uuXveXnawyq7LR7PoQAdTzy/tBZGD7rmJf6OSFM=;
	h=To:Subject:From:Message-Id:Date; b=gkUjbB3PwpwychHFZxDj8p4gpSLADITyI9djTL7l9AYeTxdGuGqkU1Q/V9f/VCcoZPx1wPYVJ3rzOoWFaaYTf1C+hn00/S/Q70WVBfyLmcGPprtEBegu0u2+wpg6LocVxt+ghM2kzHX8Ius/wv2IMXkFg1z0o6FW1Ulxxf6osd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFxBlK1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFxBlK1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23DCC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721927153;
	bh=x297uuXveXnawyq7LR7PoQAdTzy/tBZGD7rmJf6OSFM=;
	h=To:Subject:From:Date:From;
	b=HFxBlK1vbGGwS6My7lYzJJR33fQ1ePMONmzr36M4c/q5vZ5ZtoPpYKBZ6HFte1VPB
	 IeUzOKmMuLa7uaaRlTK3pJtXJiOfWAxiQHOEBPft+OF+4sgGbvaxvxVoKrCsfOocK9
	 xmRbdQkMVjpb4mYzrNHSTUs21B3TO4OZkWjonxnNOBfDu6e8hp+v9Zo1xoscR8NgMJ
	 XWYUlJUTfkfuEisH2+3IiOh6PbAqp80KHroED8grezTu/9GHdG6zDQ7E/C2Ay5WC9A
	 b4534BqGPwhwxTuFf2CvaaTIAj+IxUpchP9n0H2i/YDaCsB9F3+4j2V4LxwFI4iMHv
	 EnIm36gyTIVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B442C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192715359.18530.14842945267677911489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d2d733ad4d199dce8346cb79757f5e276302730b4c4e8325c1665ebe944ab0
Date: Thu, 25 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721927153
