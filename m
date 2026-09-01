Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB94415B83
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788277834; cv=none; b=u8Ekcde//KYSBxIGkkchLnRUZms3rwFJsakAj5e7D8y9HPZd/HKDHzFTw2viWdaGbI+93kRwKuNcnWPzj7FjJZ95WmFwZwo/a1yQvw235qFlbEjuvs0LJ/qFB/sjQjv++va8V2OJwUXG45206OUYDKVB6WM/T9TGOT3nDBvn0DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788277834; c=relaxed/simple;
	bh=qxDsp8INemr3FmumbR8ofo/H+KouxhAy1D65KM9rwu0=;
	h=To:Subject:From:Message-Id:Date; b=EOo50OmryrB/NSSzcyxO451Fr3iuFDvI1gO25T/p+JjTq3/879j0mPvFM66PujuajJcWcEGgCYZ797lm8J1oCcfr7IvCw1U1/XSbKwbKmXOKBocaGo91r0BGAYNfA2Cl0CkrUtZgM6CNO05MJZILI17rZPWKF3rIT8DMvz2OqlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL7oI+zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL7oI+zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3F1C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788277833;
	bh=qxDsp8INemr3FmumbR8ofo/H+KouxhAy1D65KM9rwu0=;
	h=To:Subject:From:Date:From;
	b=SL7oI+zTWPzlLtTzqDLKRiwfMgTPqRecVVL0BWDbqIseHpsJKEIuF+jcJfY5SflZy
	 sVHVwPaObs/9oWyZDpf1hB9pXbU+cezJUOql2N8AYrgV/1CuyRl3pYd/nx7KBunofu
	 kd+oeAzNlRi+XNg5wT+9wNNQe60xSKkHOv4EkoiQHPFwUna2sMLe3jj+ZcD4wPL+4h
	 o//Fnaf3tvBNxcDxgR9pkZolv8tYrCT1qjk0k6CcUY34BLaDevKBrfeJsLXMw+4mmQ
	 9MaZPrSTUVzAgwIJckf0/m4BNIQQkSnlCTO6xWAZfL7aFCVldZoPzWN7Poa0bNxqoK
	 8QE+XrVBj3jPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA714C624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827783368.8050.6177572995985286513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1275b95ee879fcbd521b7c2244b381259100622c561596166832f49cd7e77cb3
Date: Tue, 01 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788277833
