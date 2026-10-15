Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA794F4021
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792054834; cv=none; b=BYKj2DEd5XwkGRzK/X33MzgCr1fv/MmyZOqhFk0FE6LM+5p92p9knbVwjQ7w5JHA/OXDbbsxMVbHBATqcTG32MaTCaK86yXaTh8AyXoo8BrHn8fWlxR0lXyTqOFjcov3g4c9BX1Xx4F3LmXtzAtSOwSHziAOasRnnbjOsds8aOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792054834; c=relaxed/simple;
	bh=TnpTf1z9BmzbD46Tlyi9Y4i45j0Du2uWyMHNFesGuBY=;
	h=To:Subject:From:Message-Id:Date; b=b46l+tKDu5IEcuHd3V5HI+7NnI2Rm7nJdmFXnbuIx2SnkNcU/5lMHiL5Q6h7TN98yMhHnLH5BmHGr3Ty+jYz0/7RNrzOH8EPiygaSanqZa+NEyzngAdQCjD5PVBdhM+v2k3tW1Ar0vb99WKhRcDTXMsydb7ecw4JEiD78mXUSl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/rn4flc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/rn4flc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF073C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792054833;
	bh=TnpTf1z9BmzbD46Tlyi9Y4i45j0Du2uWyMHNFesGuBY=;
	h=To:Subject:From:Date:From;
	b=b/rn4flcpCvqOEPW6nQ27PAsDtC+9/8bLw2mYp7QHS0kIcEv5RH5YRsNSB4ydMvpx
	 /WzA8fN0NtFfEGoot/0Wtj6KxvV7Mbg/n2WWBBRt3mhKZi5VGDpBnRKxLnjoZVvHAl
	 lBs7Wu3XzrQMsdcxoO4vOiZZURCk+ayayOd54HuX+A6SGPk6pq4jXv+/hZrRDI+79n
	 d26fsyziJhNeeuWxx2U6vgQ+5jGY4deuhzddRKezEsayifVgPFSYyNBCbjKa6qW93Y
	 UjgpQxoGz5S+s9aukHQ3gM2uOLAnRPNFs0u7fpQ7f5E144qNFrRvwJA7bongysCWDO
	 A2x9epdRve1rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B8CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205483368.7715.11166860737185062220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fcb614c8387f72e6a545ce6b04388c6e46ec0cedd008399f6469dbdda0c0f2
Date: Thu, 15 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792054833
