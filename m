Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12260245019
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774823694; cv=none; b=Ndn3HkShSZGqbSN4NYpK/fDeR25rK/tYNyFNa0RiTZ7qraCfW4+n8xJHyXFodSMoDLMsWV27MkeLdDWHxDD1c7ANjfOBQgNJMJ0K4HXXdeaiukQR4WVn7grcdgJqJSc1H/IfscPL3l67q5jl808tG+yVbj5ZpCEBu/BX01vCFPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774823694; c=relaxed/simple;
	bh=pumEblhBlB/Ho3NKRtlp+dKE12GtqWjtafrzEj5JI+M=;
	h=To:Subject:From:Message-Id:Date; b=gEmd8D9RzYTzfqvjphcAw7eO6Uhs0sU9Nuw4Bll+/xcH+5sfIJYjx5vk67Q86EGHigoQ+BWtq545PJCImsVnOKa0c2kfAstXayXURXaFoPfkmwUShlvA/uYKBmGLbPEw+pBBguTQvMSFbW+NJ0EH2WTDRmZGMvyZiFoertmP/fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBFyNv/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBFyNv/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB04AC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774823693;
	bh=pumEblhBlB/Ho3NKRtlp+dKE12GtqWjtafrzEj5JI+M=;
	h=To:Subject:From:Date:From;
	b=BBFyNv/lnuAxYN9vYnOR5+CgBXmiBnkfQTEhX+W3tPQVT79jTQ3vK7T8fmwUSQHF8
	 ItIZ18JrNMtSKAUcY3TwmGnyY28+Z2+rca3WLQFtMdqToIhqjunWCg4Ei7YxwJKA2R
	 wYvUl3BTSvr0RH3rLQdbso+clwObywc/0+Ob2yz//z4sXgHsKqGXz9AIZ8a+Dmm9mM
	 ypWDMLoolhfW5CoN01IKnGPYOwvE26Ot9MMwZRlhBZ9GY7OAz+p7TwKOGyHPsjeMqk
	 Epc4234IY3f1ajESGG5Mb9LoTU6vtuhmcEe2RAHjOXckz6uVtQ1BxRNFuoAzkoRd+y
	 7I9qpB9Ln+TBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99262FC97F9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482369359.6093.17452840983165219139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f4b770c1d811913b25df7d5e5c777de88b1a0bd6f1235ea9d8a4528046729a
Date: Sun, 29 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774823693
