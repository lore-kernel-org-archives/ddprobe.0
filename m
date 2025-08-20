Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2294219C55E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755703194; cv=none; b=je2jGFjeGgeiGLFBEjA968qTtsHeBdIGb3MvmixlWt643MqSwQlQWKf36J9WUe4UpHGjEqY9LTZN4YBXxB94W2sEoaVhAxaFf21nPCXc/I6UmHDFqNeFcG1yWzRksnoOli2hjQzQ8Xs19C3ebFj8/P0rk80XVJf4CMz11d+paqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755703194; c=relaxed/simple;
	bh=dsDnFCCPvWK9oo5piC5BtF4lvToox3RkW5g/dEMgLkA=;
	h=To:Subject:From:Message-Id:Date; b=ts85LaIoSa8Vfmrzy5WTgYKuNjnA9jxRenQ/LP9DA6YtcJ23we1Aqw7uFi4PdEHpbIs7/6KD6iMzXynK/w3O2NkGB1ECEj4tQOu8g98Q6Q3AaI0zdHJoJY5Sbl5AL+HJ51XRgwsHMsqodP/Q42dygKFa9u0nAWnmIaTo0fhLv8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR2ZmIzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR2ZmIzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E631C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755703193;
	bh=dsDnFCCPvWK9oo5piC5BtF4lvToox3RkW5g/dEMgLkA=;
	h=To:Subject:From:Date:From;
	b=jR2ZmIzyHzW37/XDOpohaPuLrCHxb8pKDFAEWSsMxg9Ae4Vl7kq75fhfhiA7Ogaik
	 aufieNFBPIEa2vI9Gkc/56CwiatrI2eN0wPLBDKZ9eOz5hoSi/lhHnvUq0MeBWiBjd
	 gsNEX+LNrAVKbwB6bs/Z5goMBiAoKA+hWnvtlBV/ffptBecrFwc0lw93i8x8KT70h/
	 qKOysP1RdskPjKwiJODOYNNu/SlnMe6WspGiJ+zmrEmvVX9aLalBqk1QzE2VonobHD
	 bxPsnr5muioCMdrOdQ5TOIwGsPszGwOagUsSrp7+5Jy3hfEKxX8maD0HYOYlfPxZNq
	 NgTgeDY9bfOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EDCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570319358.2936.12590109661766087797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13829f29ec54b6c044e5e08e545bff58861686fbbeca74c4ac5e61b80bcce86b
Date: Wed, 20 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755703193
