Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28668156C40
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736286354; cv=none; b=FnkJdBReut7ebLol5TEx9TISpqw9K7NMTflmlFo+xmvyGBQ1FE//yL5N2mnzb9cHoUZUwkuWCMFVZCSDgYNu2ayko+947Ia8kdWd2pqtpqrR4vUoFELDlVV4dSlk7fQWSlB1GG8MZyrpl6MVBNagaiswHsoQZyCepiwQ6wY37eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736286354; c=relaxed/simple;
	bh=rr+4ewQcTHkF0v0xW7JCM6DH2jsR5w2/7lXLWeYHDXk=;
	h=To:Subject:From:Message-Id:Date; b=d//2VTdpmQZ/RbvharTIebFKyOAzGAoX6lMUxGn7jNa0hDGZQlNCGYdqak3GdjA654sSzZlPtSQ/zFGLG/vKihcEuFY+rixm+dELGYsY56t8Nep4yywY3BbG+aczp0eW2uSyJ2wRpp2CCanRRac2xITl52Fhqz9uS2rDejmCQKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSoQI+Ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSoQI+Ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1806C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736286353;
	bh=rr+4ewQcTHkF0v0xW7JCM6DH2jsR5w2/7lXLWeYHDXk=;
	h=To:Subject:From:Date:From;
	b=nSoQI+UgdJCtRKQnMZpPkyKynZQE25dIDjO8Va33qT2pmuvIgI0kAqFL8zagKfO3Z
	 1XyDxvncdAxQd+60ssANhXaNCWTSzvqQ5epmn45FyudOuOnih2sMAJ8G39iDEnKF7M
	 WwFPLw8uMUIkTJuGVhF52lBJzD0UmfgwnWBxR31bQq3sQBumimcInQZHcZHoIUfvkz
	 N0ZflQb2Ufcr81FPzSR3rhV3K0FFylk6CjchtXR4Xtfnqoc9Cl/rN9goNa32HVULDl
	 DBho2UwUgAxhdDE/m5ZFxjlymuXMDElRqgVMwV4jpB13mb1ljMJ2pww4HA3zsvfWrB
	 GFxPg2+A/giTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993C2E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628635360.13819.13497918654967353208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6183dffe396d855efadb5d9a8aeb868ae74ea0c4b8d23bb8680b5e7376dacb2a
Date: Tue, 07 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736286353
