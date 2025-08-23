Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B275111BF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755957594; cv=none; b=lVXOuMqIQqoS/+DcDwaoigJdgjyr7gQvt3b4vLusia3pa0VTpgbfphw4GzAJnX6LHGlRKGWSqJpILhYg1oeMbaVmbrufE2zcKk/6LuE6o6zmOfgwkYt6wY0Ys6WTON36glIn6EHgDBEbLojhkolTBmCk1OeiRaljlJUoJQOyVL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755957594; c=relaxed/simple;
	bh=h1sJKS7aVx3TZyfx3gm3wKfC2YG/iBKCEUpZKTQtefU=;
	h=To:Subject:From:Message-Id:Date; b=nbfkDI0TK4178txxZAIKJmS+tOY+qXLc+9vG8yYirdkPDOOmuvM5cRMe5vu2V5sYxVJkP3UBvIYdU1llrmz1rawPDY+gVbthKXuVSl1y9JVs2nU78WTMdOMT1DSfoyJBGmFR/RlP3n9YGFw7/gtY8RqkgjZPuzm4+IAGIZIZ2Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTmLjYYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTmLjYYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755957593;
	bh=h1sJKS7aVx3TZyfx3gm3wKfC2YG/iBKCEUpZKTQtefU=;
	h=To:Subject:From:Date:From;
	b=qTmLjYYw3Z76Z6vAUUoSdgPF96nvs7M7Q4RKqA74tYmIQp1oI1RxtI94bjEC5XItI
	 m51CT7MVQBDkNE75bNgBN7Leb2TwOkz4gl/jhbBUqPoceTDOteC29CjpblQX0+mAAo
	 iK7uPs+QsIAxSDYxQYLqqDkwFgfskDjR93QQfVXK7t5FhQXvh7Rm+Q2lAF6zFkX6LL
	 Ar8zHoctEF6F6rt3cRw+rLBcsPbyK0rnGVkyQaKglIO0jUEMMVn4TGPvLSu5WJFFPx
	 FOpsr33dSueNT0tpUgI5eMqhW1SbA9/A8MyX6p9odG3uo+Ytn6kqPEMXCENe//rmLc
	 vylr+9g8oSuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA26CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595759357.16728.151912563928856561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3970600e460ae27a9d02019a75ba1bc7f8132ca4f6f0069ca60bb572fc27c51
Date: Sat, 23 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755957593
