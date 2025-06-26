Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378392E6133
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750952994; cv=none; b=L6k9+kjawWP9dNi4Gil1r8hnm6vckNTNB4+wgAhv21KWvYh5KuPscFliQFEcTzRMuV5VlWJEgPyzVMaZoxNqAkrza8kV6XPtfKuffRE8SfWOAatI95wKLi6H7eT4mdcO5YgFUZXIaS8r5ZPBRqWTRV6EOs/DXKHE6NtbejO/5co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750952994; c=relaxed/simple;
	bh=PjOixTsZCgdd8mSgNTLtBHA0v45IcD8zGHKxXLwO8zI=;
	h=To:Subject:From:Message-Id:Date; b=Nwiy+fIjdl9sCsgX+tw9L3MFRB/3hseUpCOfYB8/e7AVN9gQJ5Ju1ZH3MnuOa4RMzSeNZSvvS2nB0fYudnG1QxxFBCGQHjiTHCR0HgTjn8l5iIIWUDDkpO0JA/I138I1/v4Iw/W99XGWMyiDQ53uMVpHG4kcpTfpZFrRXeqE+e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyTWwS6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyTWwS6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750952993;
	bh=PjOixTsZCgdd8mSgNTLtBHA0v45IcD8zGHKxXLwO8zI=;
	h=To:Subject:From:Date:From;
	b=lyTWwS6C4suie6bG9IiRbA1wM7Vbqrjc0ypymBC5NmER+vA/0WDrsJyxiZ3zELNJm
	 V1qjNm0QtbDPqepMGcvANd1Pij97GeknNYXpjxQjqLhfK2Vurjn3wJo2QsYIAGv1ek
	 E/d6A3qinQkOnLxsWY0P6iS+h+luBdSehqv9ZTezAqPLL/j61rwjqZWdoacOhilgag
	 WUE+tPNxTyo/ySMGSbW9AZeBfKi7EggaEyk0KftbmKmwhTuA6sRRGsaYLaznGA3BFh
	 Vdv5PXugKabV3d4IHm2nkL06Tv4qynkJDwcUntJIWF6rNVI8v9b0nn48ACKDZDGvtw
	 fGH95CSCN/vnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A0C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095299357.27703.2146297965240631583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116535cf78fd560c0692ea05b21352a28dadac9736014e5f8d08cbb4590d9327
Date: Thu, 26 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750952993
