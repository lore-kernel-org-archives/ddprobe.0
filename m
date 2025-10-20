Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2104435950
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760942994; cv=none; b=Q3uJhqdf0/DAXPjnMrAzDJhfJHkYEkT+xBvS+JYEvQ08mlju/1/1efv7QvSls06s3W3bAZLgjp2lrRMkb9dvgA2vqx58OicNVXkUhO3Tt+IgolzXJKNdCoigzalmygVyL7aVhZ2u9DGmgRtC89YV1gjZfR4C3WJ34iBSrET9n94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760942994; c=relaxed/simple;
	bh=bA+pG+VdFpXaX6XXcJ78ECEq0fdZGKqjTwPKrfJ2IDo=;
	h=To:Subject:From:Message-Id:Date; b=Tpknqwq2R6ZYOSiUeSYdONugby0JthPir/Ry22ix1I5MWnAxa9AfuPBIScu5WNqK9iDzgtHKzYtwwQPLGbHxwKLXRrF28mFWuFQNa14yKa12ZIdStjbx/avh2pQVDYnJUa02pmy765XFoLmKMSZVjlkkA/k15jbmCjAlJ+OEAoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTXXsNrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTXXsNrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C6C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760942993;
	bh=bA+pG+VdFpXaX6XXcJ78ECEq0fdZGKqjTwPKrfJ2IDo=;
	h=To:Subject:From:Date:From;
	b=eTXXsNrfSQpbPaOc+gogeyQMTKTruzTRIsYw173hHdBBlAGg8plpqpj1tM52sBR4o
	 GKAYEbBY2UbGNomfpMLpbNp37hUImiqRyrPeP6FrCxIPtZ6VxSA3O3cECB77o0gVcD
	 VxNlrneXmArNGO1tyT8PrE6IejrbCO42DO4VAw3o+txqa3k88T4+Cu70b665ZamCYE
	 tvnG42dYUZXV1eJQGTj+O2BhTl5VWViImCrgd+h3NDGVYKBSon94F0gykUKT4JDsD9
	 zsZgsYhddhNc695pIRI0hgk79rKttL3H0r1jjYoygI2iGislPsytxuWYd++38QbdgB
	 6NWHVyQbuFfvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D8CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094299358.8017.12291673232604743002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83951f72191c58eb9525fb8058c4149216bcd4560af10d11f36718f19fd39e3
Date: Mon, 20 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760942993
