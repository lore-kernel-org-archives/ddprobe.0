Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4313491C9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778330855; cv=none; b=BnajcUILxNUJ7NXPLHKP+mHRGgCJxzTa8chNwnvqMkiWB7c8gbBBfNpIjYTo0JfQ/DnQMwaqeHuZhAJNDCKxLaz0Orb9SAi2GQB0rlWFhOA+Mx1OnMWuFYUEhdQkSUMlgTCMeUOdXXG/ponT0ACKTh+epwra+Pufw3+KMIHPVpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778330855; c=relaxed/simple;
	bh=6xfurL/iAV42fh1aBZEQ6HgcKHY+gX8/WI7yn+7IUcc=;
	h=To:Subject:From:Message-Id:Date; b=FHQxgeK1PTI5Q3t3i5hK074Ner7JnVmt0rdTaLnOeq3KYURycFjzvYJv01UhQaZNmdfTpGWGFiKqDMWe90uFtz+Q0vL9G/KqMUaEmDP2Oeg/XDvzlDxV1lcjVQlVMbrB0UkqkQx422ACtdBZXUx3XxXM59bkVAafY59/vNPMuGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tortziAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tortziAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F280EC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778330854;
	bh=6xfurL/iAV42fh1aBZEQ6HgcKHY+gX8/WI7yn+7IUcc=;
	h=To:Subject:From:Date:From;
	b=tortziAzlhTBhCqlcnZ2uW2FjvjoqlPO4CvxHcubjmQH2BpmKMObNfFtD33HJeGgt
	 FyvvuTDiCAQUrDeWOFD218nWVoxWdUPpI1W0rlcJ6JTVIgSTmzRinmlejrOnErMo3S
	 WpHDPYUSoNA3pwLYQjvmWJCn5rnceAYWK5UEolKaH8sjbPze3O8g2ScuhheAgX/E76
	 IIJFiudpb27bSL5497XXDdkheNSspgeBYYKNcNV3qOYQBW7fefWlU56E6Jd5HxOSQL
	 1KC67tWJiesVXCKDJcXtVDrwpsOruCcjZ7us91hj64Mefx4mQhRFRiN64GcozBXsRh
	 OFP8lk25yIPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04E3CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833085379.25772.7464695876675653321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ab46a4a1bf8924217c7700d15c235142665381954c3d0b21964f590f615241
Date: Sat, 09 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778330853
