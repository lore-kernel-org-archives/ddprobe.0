Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E625417BA8
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712245097; cv=none; b=JAFyhuB+keprOz9aLgfGZwni/SMk2A5qtzvUvS3c45BhTGW+kYxmyJGN6yWH3dURykrKMsxv24p1IWZC+Vs9GCe40UBEzMv6aXYGUSodRSPOj3PbRp9n+HXbfv0for96tk3ovTVsvxxPgDl/AkOp+7BrRluvixwy4g89sNERuus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712245097; c=relaxed/simple;
	bh=gumg2qqiyet0hjwhZ127AbOZte/Uw1rASZaQvElfwe0=;
	h=To:Subject:From:Message-Id:Date; b=OlPxmz+QLbqhTsy4FKoMOrISvuPLZdZjVFocbxdAvJ5VWd25vYe+q99PaVE+7ORrIh6HZxgk8fFqrOTk0iEr+5d9Rq77mjhZ6waE4++37zL1/iSqI0OCSTPkXmC+oceNHKJ5MrhET3RuxKq9owEqGxm+f0q+dgxK93d2Ndhyvxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qyq6wZ5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qyq6wZ5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8A2C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712245096;
	bh=gumg2qqiyet0hjwhZ127AbOZte/Uw1rASZaQvElfwe0=;
	h=To:Subject:From:Date:From;
	b=Qyq6wZ5FO5sRBQRkFcuAA0AZxCjHhpru+yY/0TtpIUubE2YKhY5EBtahvAU3Gyh96
	 Y8Tplr9XZqsFOyCG3Uqarp6PuzPtOzDuwSYGxwFueDPsUMHfR+Hhfd0m8Eio1p+ba3
	 Omg0QutJTLI1S4hAVzeT7GoqilajHJfrukxzV9j1b4vb4oG79oWnDzXsQ+G4uNocor
	 HtmBuRhUJQ9cALZtBC/121JW69eRx92vxWkZe/5QXdnqiyEIv2FnyVw3VFbQTgsvh1
	 wrd+3sdum9uEkMiz8kaxIeO8kOIsFa7e7hkLQRW/nErj9ua67hL9NWObrGYnsHWvSh
	 z2vS1RV6k2Zag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70295CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171224509645.6242.7133308340925748232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f7b8d3a3d5c929fe2959dd8abd6fb81f7fc599fe2fb5ef388cbc74f23f53e2
Date: Thu, 04 Apr 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712245096
