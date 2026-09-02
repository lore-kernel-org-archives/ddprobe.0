Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C993BB103
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788337834; cv=none; b=aHi8djXHetUVTJno/BLR9DACw7PR+NmLawYlJWvUdTLx5331gY36ymlJ5+WGbXYjy/XtILKwIFeM4+yYHJUNc3RNRp6wcupsqkuZU9FbCA/6eN4PXVHb8pOnysRozSyz8XSmnyJqiEIFGKMjdatCyjDyyQ/GqyjOoiXt8bCIIvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788337834; c=relaxed/simple;
	bh=/x8sgoypoqC8u6D6TmotFV2D0JkP7H5/1tf2qraLJf4=;
	h=To:Subject:From:Message-Id:Date; b=Zd24bBDV6rhCGtRRkNneKcmRPt4NJq0ntA/sc3EVKXZ/nao3ZZxYYCEA0O5rv6hiestsy8CFEMKD8lCIR1u1Fr8L2VAtDXNxWBC11W4ty1KneBO3phI1Wgy4K7QsHHkcu39EbKY1zGOO3HX5HCe5NADHXsZuciqRILx1IHzhTgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXLWs6BT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXLWs6BT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5758C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788337833;
	bh=/x8sgoypoqC8u6D6TmotFV2D0JkP7H5/1tf2qraLJf4=;
	h=To:Subject:From:Date:From;
	b=DXLWs6BTfQgKSmZ+Oc5sXv96p/J7gkwRUkPl255W2OMAZW+vLhBew1AcfmVS7hIfI
	 /8OTeJka6YF9zBxqBgAlpSXQdnhgre+g6gU0qRttwmMf3Zs44p+Elkat9KJwOjSGhn
	 1JC0+2nob9NQpR7DuT1HDp6XRyC+mZlPh9noiIZM9JUoCeZfDPaUjwX0ozBsJaU6TB
	 ZA0Sg9gxXcwfEnTMgotbeZB2YpqwfN9RBB6QnUVzTCay4R4/GKiFPDyf6l4vziCyjh
	 MxV6vonyPJ/S3e5u2QOf9XNiFgaWjhmjSJHG8BLcOs5LbjhewOu104hvK/B2+kiuNU
	 BaGKBL6eTgBgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10E3C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833783371.8693.9693009771052018587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abdf8ab5efc25f85ace042f0fdc860b1eb2d4f716ceb6b547be8a5a1d8dd54d
Date: Wed, 02 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788337833
