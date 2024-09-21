Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271A236C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726890354; cv=none; b=fzMAwhSXd5ToHCY9e95n1zwN9CR5i4FigRXWal6n/eaeayw9TBIXjEWWh3ADOG2nbPc5AkiY3fUSnD8tq8VOre1aHxByLsqVb2vhxvDvMkcwhWLN5lE4gUR2+oQEZHOPL+hRClmWcJ8q/qm2+c9vpYpNiW6MVu02OGBsobzQj7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726890354; c=relaxed/simple;
	bh=3lSBVU9khQiFtfavojaoWyqVuEfftuE1tmSyQGFgYVQ=;
	h=To:Subject:From:Message-Id:Date; b=SyYnQ6HkPnRFF9i/fmVNhZSopClDdLGr4ruuZMNoblqSGRSKx6HrXWr3lKMHXraOZkSqyC11p3ih6IQrISZeOGvsFs5hIVLWHrFZ7JlFLtv4bxamEyxwDS+tAQMHsb+UuD8ZXFyDzRipW9cowEEvPmkMe7LMR2yECXpKF3jtvzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrOdkSTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrOdkSTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08A2C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726890353;
	bh=3lSBVU9khQiFtfavojaoWyqVuEfftuE1tmSyQGFgYVQ=;
	h=To:Subject:From:Date:From;
	b=RrOdkSTWEvbEpT6jdz47Q+IWVE29ZtfDqfDIVU5tpeRjHjNLLfdIe1uHBQ2JE3Ncb
	 xf+fvoLol7tMp5KpdAU9oRVt9DSXDckERRdP6V6+Y/1Ziep/RL+obCBartPvZb8Dc3
	 TWVgI0I4+xK2dNJB1GJdUm4JktrCUlIK6HDVLqkXMq93ahyeC+Ly5MkuhtOSeXNO6Z
	 QVTnBWqxWmBSai7sO/eP/ra8xn502shwgUOrYOTUOwQCh7krEkN9dXw0zpOIf6I0VV
	 2gvKEzop4XwahcWkGnJmgcsf3acmk9/Z5wN1hD/PUzJFPheneFZ2XPSS5gv3WEGyvx
	 59TSfJxotj5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF3BCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689035363.12664.12863079296619287759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016c77535f166b6fefae28c61e15ece00eed88441e7a2bd3de35a41976be08d7
Date: Sat, 21 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726890353
