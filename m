Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E39628FD
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722586554; cv=none; b=ooJMxTODFLA0NBQHC0LGdRETwvraeXvmrncH3wc7UIJLq10b9p/S2SL0qG9FSOwvul+NYxwL7WBTsy7ibtt6Tze9Oa7PT0/wBOudEm7Y06x06VMH1HLL2M7UozOF23amvqBePdOGs97serijuiaE6GmvkWfjZVcOTv5Y0JpBndw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722586554; c=relaxed/simple;
	bh=idVHjOqz8gJviw9UGO9+oIzT8tkOKf3lmiTJG1VdLbk=;
	h=To:Subject:From:Message-Id:Date; b=bX/0djiK7kRnzjoTed/RR9lmRUzqdiVLdtPzOHzP3MoqDhhhHShESJ2mms3JRZ8Renb0hrMic82at685QGqdO09ichwE8h5hNOXqmZqV4qmY0l6oS4vq5MRqMIAqk7W8peV0xTqBKB2rvaT6j7zRXLlo1g043pIgW1+UokytwRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNsxO1uX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNsxO1uX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47E0C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722586553;
	bh=idVHjOqz8gJviw9UGO9+oIzT8tkOKf3lmiTJG1VdLbk=;
	h=To:Subject:From:Date:From;
	b=YNsxO1uXnOLVpeu5PX4jD6pS2unp/JJd+3j7AKZwyn+hadbesneb9AKDVf8a53E1n
	 1UPGHpnSKq+10Oe6rWxG8l99TNIWQrALaVguJW1R2iTELd8uUWd37GWhdW1Ya6Jqkd
	 +j2Jyh01wHidApgiWToDL/xwKdMtNFRpot2JZ353HsIHsa0uqZHHpH9njnrr0VauL/
	 3wwfCK6GluSQlBBkuk6J6B+ByL8YsVeWkzJU7E4xKa4PSlJkiMZfaDi+h6B9bCQxSx
	 GEbTkJ2yT/3BCfyZZpxH1aLh/ihSEn2l0v2ym4GeXjWSVvDcEnM/C/rTjAtUrgqiY1
	 0EK9zFceYsd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CB7C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258655364.14622.9612713347962338067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de680e6d0cd09f9f57fc739857d6325e68d5fe446c4a0c60dd4190bceabd3ee
Date: Fri, 02 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722586553
