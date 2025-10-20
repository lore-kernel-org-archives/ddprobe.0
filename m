Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E901CEADB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760935794; cv=none; b=nbBqkv3PRHz0x91w+a1/jp3lIOgJ2WUeKZWZ8juzyB6mUIo0pccM6A4qfFLPnh0jqUBmmNmYVaqhH4qKPO6jhRRhAkt0ujZmCcLGs1BWGkBWAGXU//VdKEYhWT2xsbDglLvCcGcI3/+kTf/ZdPBB/d1uhDW2iWgjqbB0bBD6ofg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760935794; c=relaxed/simple;
	bh=yZwSOQNZU2wz93qEaEMFiBxu3i6vx1Ab93cQuIgdrIg=;
	h=To:Subject:From:Message-Id:Date; b=dInBeJTPri62uiHswOOH9eNXhfUfllQpCZ65+/X1jYzwEJa8kUuL5MAOLMZh18mvKKvN65x/GxQLI1dxfOV0VWE9LU1hQc0hl3bCjgg6iNszU6S4DCgmjKhzQCMBMrhCWz6JUII2QauiVJHDqLHzmkq+YSPsCCAN3Fn4B3YmFhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EA286icY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EA286icY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A80C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760935793;
	bh=yZwSOQNZU2wz93qEaEMFiBxu3i6vx1Ab93cQuIgdrIg=;
	h=To:Subject:From:Date:From;
	b=EA286icY2EgM0reIU2tOxqwpaDHzwAzNAKw6TxvOZxQaqCnTaGPV1Hntu03Lqd/rv
	 dcuxhh6d5nQxGlRHBLeJxeyr9dKVXFCMoIFM1RRkZ86mNOsvp/ZtYtgjAcT2BlEc1T
	 TzwHsg+rxoZW2vSJ3EUobV5maH18IYe1oPCSp0CDfvhvrh8kKuCm124S6/ZxAbMON5
	 OtYwuF8ce810FRorXHTYihnr/tsPJa7MGWPqtwPHPbxHlMQPFw/UmPnaYGUKPLT90U
	 HJr4gQd+Ktuq0l1ksziDtBW5psLsP8T0C6/Yq8mrhJTu+D4/mKMBxyzHmwglRrNGtw
	 y94UNj+xXtkDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92316CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093579357.12615.12896138149380079683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf5bc527e025925868f2bfd2494c981c693e895100c747aee3df586fa27748
Date: Mon, 20 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760935793
