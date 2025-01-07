Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CEB1F4720
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736277354; cv=none; b=ad7fsO0iwzR1tfd9Bxm9wFjwNtKkZLqOA1QE4cFFbGeQEV/i5wHgiDgiabMLiEOYtzoEgtQ182h0kLMHIDryGhsFD5t+Bz7FWRk9qCweWqHh9wWXH2tXPCve9JI4mK4l9bwn11N5LpNjUqQiYPHTFhzeFHrFhfN/OeXu1x/xPSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736277354; c=relaxed/simple;
	bh=q6MTsFNRkac7ULIFFYAM4a5U1Sbu4xwSWRk00XR0kAg=;
	h=To:Subject:From:Message-Id:Date; b=VakgwLxX+J18yEBEqC4456X6Etb0CthS4JXlnpISH52CYkj/dqxstYfwAzcoGUdMmBsSWEhD4AM+MYY+kLV/P/ds/UGnt9q5eCcy7dLUpuPtsJ2izNgHg5KWtTpOG3H0Ue/O3LQvUsdEp4E4sBJ+fqVQIFuPmK71R9cifcySaV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoG3blKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoG3blKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F8FC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736277353;
	bh=q6MTsFNRkac7ULIFFYAM4a5U1Sbu4xwSWRk00XR0kAg=;
	h=To:Subject:From:Date:From;
	b=EoG3blKUkXB0NtQa6AR2njNJ+g+at1YWwCsaGDMNPGwFldCVP3E3r/m5dKXt9CLGI
	 BXFcoWzJKvRVPn/s2/J58wm7MPeA7ApCG7KZB+awF2amMiZoB/Gtrn+kMt5f4dtvzN
	 r2IhIFFMWhuffUtHfF0+ODD9LeDmEAZi2VZPcdA8w5p7FYYBHj33yBXBUm8YMNx6M9
	 sKthkVOgSizlUXrlijlseK0DMRK1UsUHnWB4uDFGyx1AChqa225GjdWXMPNaBGjmwd
	 uhGvLtDh5mMXoHchadCBhEIgH71EF55BGLB8KmjQ4giy1Unn3lb4bgNzqrEH5CES8o
	 WVEEBtGhnZi2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9735CE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627735361.26769.6036444946495544572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43de6d67ad16fda83c23840bd8bbf3e0494a1fd67f160bbfbe95054ffb41074
Date: Tue, 07 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736277353
