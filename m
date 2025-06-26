Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185304A33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750902594; cv=none; b=WFlpOHjY1kW+B4qY0YRstmunxTvixPF63/Q4dLEB4kNuCm7zSfjgaZFbWGSUyZQuLzJek4kOsYROQQX6LqBGXU+2hwDV7SpIAzb7fOBphbo2dZ3hAjcU/85Hs1tvyNCKy0G7VZ9Zhta0kaBUnXyTwWw5QcFb0HPijnb0pg8OLNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750902594; c=relaxed/simple;
	bh=xW4QtL1c1KPmTXQhtIBbodLtkdG0qlRgisCr0so+6JE=;
	h=To:Subject:From:Message-Id:Date; b=TzIdY8FS71QSn6unVxsH/l45AaJzL85Mc9s4Q4TfIrl9dOXqBMchXCv9y0n74fesRGIyo4n5Egvm1ZfBF02r4LhDSGskrD3TQDt31AFLStRyewHAKDLHkUqF6zA937WKwRSPn4nC65IRXknXCF5hZL/q1TcVkeIQQU2CdXcimLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQcXdUFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQcXdUFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FC7C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750902593;
	bh=xW4QtL1c1KPmTXQhtIBbodLtkdG0qlRgisCr0so+6JE=;
	h=To:Subject:From:Date:From;
	b=YQcXdUFlAR3Guf382W2m5r0EIiNODMO1OdajETqZ2iLGu4xWqiqD4YnwzXSicYpF4
	 Grd0R2qWROtnFOHXy/89EQIBa3augTmeb1mSzb8jEJC9xl9LaeM8+0li0OCinmif8a
	 3MzgkGoqeLWVTWTnPskXugaZBGzbr3PinjrI5Odhp1SwtDzBbASbKRpgoJ5ZO1aC7i
	 UQk4AWErJ7bYoVoFJ7iIMFSDjRpUDYwGclLkL5MEYLN3rbcc8sXDmXtJhckLdzyk/+
	 LuxKW0sWUelAVlcPkEImZjeQ2zzCR0TDtEP9VIRcXiiX+8QGuY8WGg47tvHSKcwUZR
	 SOoRYrv0m9Zhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDAC77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090259358.2603.17904730530385339785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e81378672c883abdbaf857768532b6a3aedde42fe9ba67a60362f9e5d23d74
Date: Thu, 26 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750902593
