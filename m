Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050B24CB46
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706944697; cv=none; b=EfVp6znMtMfx/ihX1fLdkzhWjNqbhOeO2uEkzn3o4F1A6Je9Yem7B3OwM49wUD3Igc0qr0KE0Ph/gybyhP2ADVoozwcszjg5S0bueBwrqsR8R9qUU79pUbsbcyNiZbYIySR8Y3yD4fZP1gG1VIlMk+7B7bRDj6zBtBg00KeG1i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706944697; c=relaxed/simple;
	bh=1QtcZZ5wRuCkCXdBPqwaPcd4IBRr/INcN5QsvOXL/80=;
	h=To:Subject:From:Message-Id:Date; b=D61nBVwvEXBYee2FyE8Ej++Kyqw2hwhEZuSEIgB8Cb1uiY4JYIfFssgBxb4XhwGP4Lxm/pVsAGjDzqYOCKGsxZg6vmNnVMtLFQQFZpPAkxAT4HG0dPIMIWR1ZlpDCiTJ21evvXxSUGL9UWXToM3ep/X5hLaBBNXamRiAjjflQC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey7CL9rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey7CL9rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84817C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706944696;
	bh=1QtcZZ5wRuCkCXdBPqwaPcd4IBRr/INcN5QsvOXL/80=;
	h=To:Subject:From:Date:From;
	b=Ey7CL9rN8gW+RDHzkjjsHRT2BU4FKylekhU3RmHdGKh9f7kVHVCC8wzk9f7m3u7WC
	 ozqceqKB1iecf6Q6ccJCHeqlFD2w9thQzYRtq9Ftu8Gz3CblglXLNBmRc8efTYKu69
	 cEPcVFQDrNgd8AH9NUYemz8+X0u5g0MRaSNeSzb7hHfZHy2Bfey50sVwv22gICjZpi
	 igjOkQGadqa2kTnAHjKG1lagObIqvyjuibsc81zATyNjln6G96eDqLVy7VIS7cnAcJ
	 s6xOjPAkr3zuGikY0WpIaYaUOrD8GR1FuqsBYD6Aw0hHMKknXc39eYceVO6mPZ6Wol
	 2g86G+llhjqNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6707AC4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170694469640.1802.746106619100676824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910f5478021ced30bfdcc7bd638f434698fbf9d1c9b7b9b2ce228d47f84ed972
Date: Sat, 03 Feb 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706944696
