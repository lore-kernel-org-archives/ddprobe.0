Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1154D27F4CA
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762793994; cv=none; b=jUrOy+QdBJzLgvouDwpud6HQ0zRf6iCmudDHLzmD1q73psB//PsQiQktswRLqKBqWrFAi3WJrf5DJ5ygPE9tYd85RGkwSqkwZKWJ5sVpehKx25/AMZ6N+SQqd0KEvQWBMEqe2VCBWh5ofLUSOvCCIq2BHj8vR337j42yDrpeLks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762793994; c=relaxed/simple;
	bh=lBbMezM5ddDu7pK16/ZcttE3CEC9u0+JDDR6brt2Eyc=;
	h=To:Subject:From:Message-Id:Date; b=giKYfN47QfU8DMw79Y3iZhwOBtAIEfn4M04/tFpv4Z1dT7BcflbXCWu17SDjKZPiwvqDalxp1EPudevoaGfNthrg96jVtXi1zTNUx1CRyCyBx97gYRxNK6SDimzI8egYyB3jlhnSjwrml3LOszbUDHO4BTi+7229MxP2whQnYYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaT9ODWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaT9ODWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2360C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762793993;
	bh=lBbMezM5ddDu7pK16/ZcttE3CEC9u0+JDDR6brt2Eyc=;
	h=To:Subject:From:Date:From;
	b=ZaT9ODWBBZ0abq/2NRJkRzHWFIXOd3f2pz3UWRGdxgZXMZrSSeQgMnVis0mJZKcbQ
	 731CRvxT2kYIUvWkioY09gY1/Atcty43RER8eXpQ1TaDIiXW7iK8TnxfKRTuppvPpd
	 rLoHjxQhWlws7kXtKBoscxM/BP3oH+/6Sbsp8fkD6t6oSvaciZLl//BP5K83lxUzmF
	 hdxRS5dpT7ErY0E7CXq0ML6He85PqDF2ZD59cCQUVYyOarXWwFePb0RMzqapUV22nU
	 JEkVlcf6e27RAAQ0SdC4gG3ki6TwZeYdpVmCoz1wtmhEbUq9TwWavlDaFY5ILH32Pj
	 XEk4FcoSeck3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059ACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279399358.13740.16094154084908716951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d61c16be12b0d70e3af26b8e31fd78e80f1002db3a6c427ddb8991a5c5533c
Date: Mon, 10 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762793993
