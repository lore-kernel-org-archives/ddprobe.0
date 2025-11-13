Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D9F1922FB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762996194; cv=none; b=MOZvBHcnCNluKm9An0A3pnZXTpk+o0qb8HmG3qaGDV5bfNFRF6lcE+4Ot40AmdzmlZQGp4aG3FX/8mxSBeQ6G0xfcqOpSjSkUTyFAErEnADDZbPSWfMjVMR9eScsibVr84+e23Za0Vf2BRJ6RfbNA/uatrUaMLS1yN7rXsQXC8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762996194; c=relaxed/simple;
	bh=LEnfHt4XLTWRTytHeVNdgYssQGS9c0qoAoPxBOyEGxU=;
	h=To:Subject:From:Message-Id:Date; b=E2HyeQ9b0VVbjr83R9wZEhEAm7XjZ65WfAfq0IehrOd2W55Q0c0U8e2MlltSFQSD4p4EDuqWtc67wZhp/N05KS5OqUDsAM1kCJUc4E9YTC3K29xvtEj5WnXM/8n2zPlEWISQ84J0EXjf+zi3+kAp3KFNcTxCSiYhijrE0CbLjKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6gFDMU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6gFDMU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD8CC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762996193;
	bh=LEnfHt4XLTWRTytHeVNdgYssQGS9c0qoAoPxBOyEGxU=;
	h=To:Subject:From:Date:From;
	b=n6gFDMU6dc4BBTHDebaRjcnvLRxHo+fez4NftrsMN71ShH7+o7lgsNQXM8otAUsyi
	 THVpewvoUMZVVQzhbtiChjOK0bWyiWPjp/1Ynt1nHqNtZEPyjT7wwsBvyiYZJX2umM
	 vqElptKlrBVBx5T409HatmjQ6lwJi3kSTyWMBWO37azaEiA02DARRElCI4/jwtkmxz
	 Uk8Nf1JDY0+tZbzwrr3gIdm9cWW/ABIcTd+Q6BE1RHaw3iUBxtljnbK3sRUQQLl7kY
	 K5is+t6s0p0vz71yDC/ZAzaIEGSQLoxYRgwNCJ7oL6qOBAjYTlBemjPiF7WRnycTRF
	 WxfeU0xpxVr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901ACCD3441
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299619358.20310.5190951155249490853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19117f9137cd7f9852a89239b6cb04e260f7207aba58c38f640be264e931e864
Date: Thu, 13 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762996193
