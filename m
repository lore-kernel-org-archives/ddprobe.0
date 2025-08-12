Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25322FE59E
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755025194; cv=none; b=TwpayP8y3i+k+idP4Iwhupz5KOnHgyPRT8rk9Tjm0394j2QA0QET/ANL6x7pxUq3gIAlaas8FYfS7qULjVzXM2U6LOoY2d7p8UW2+/zjupK8Q6GZZAqoCFAIgy4RbVl2z3m9S9ZT0UqxX6WNzi9MdaZqZw3FiMNMzGNDCbP1364=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755025194; c=relaxed/simple;
	bh=yHyWL/x3QTECbFx2YBoow9uVpG5OYY7hGafLk/OZ4ag=;
	h=To:Subject:From:Message-Id:Date; b=Ir/USAJXVTXjcXl3cgOLMzht6iwA3Q26E01bsZH15pl1tsOMW/38wXd/jRaAonZrqH2mNyIbd32uIE64BIX0cM51jLqkX64dUPh6hh4X0HNdxhMtFdnB5f330wGMnKjT4GyY2OcdbZgMf7Rem37c+RFweTn7sOorfaOciw3bC+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhUsD2Li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhUsD2Li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4EDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755025193;
	bh=yHyWL/x3QTECbFx2YBoow9uVpG5OYY7hGafLk/OZ4ag=;
	h=To:Subject:From:Date:From;
	b=lhUsD2LiLC8vTBlEGDRJKpMpZ2fKEdlyugxMbNqzEpMGlE/NbrT3eT9bC2K4+Bcmg
	 aPG3vv63RMNXIApLUn31RHzxkHuiSRvjHQdrsOVs3I5oMqoTP16SlufmPD352PxdqE
	 YtMmJ+cOYm22dLNv5rSrGnMpsMGCqlVoCCUSHN68fiXA2+MdHqVPMFWlG33GnK5aGz
	 JDzTKK31l12Ju/2mwCQbwvMW7NyD2ewsbCSqpYQ+oEeAjRGJR0G6BSUxjjLm/MdwlN
	 nP3o54xOm7tf4mJdGLOftNAnZmc0pZcfZ+l7QjW4G/Wgxu8L5Lkn1l3lEO1BDJprve
	 nzLa5lIAmaWHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C5CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502519357.18484.9898113689246612991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd55e85a2f92290502c67b0196c093b6f634a47dbd5150b04e512fcb76eac8c8
Date: Tue, 12 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755025193
