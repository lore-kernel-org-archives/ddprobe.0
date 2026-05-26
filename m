Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2C440C5A4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779820954; cv=none; b=sOVZUI5h6DG+sPu8j8RhdtvGFFWVHufWfCsonQ1EiFWyIHgY50NM4I0Ssg5f+hN7rzsJ2Y6IFp+GwVhMW5u8A6RBrgkJzf1tlTSaIy//RFP+fYuZPP3v3KceG8UbIU8rt0JZqQ2Q8F77ZRX9zuESKg5c4ZGCLNDq6y/zTqVrb1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779820954; c=relaxed/simple;
	bh=BqqfvsHe2ozXf5Rb1fRsMEWynNppZcqmA0TMDo2BoEs=;
	h=To:Subject:From:Message-Id:Date; b=PO29d3QLJ7R8MADuHbLmak8hEHjhVyU0F28UttbcVOkBGZqajvy4PVofJ7dE/AQGE/U2jWaDvke5blFPE7Y4s0Rc+BYh1imLHdk5tdf55DtQk0e9h7OhDFiuPT//Iw1s2VKs31eofrd1lbQylKhnDnFwPULUyaq47lD7IK4irfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2ML/PGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2ML/PGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4495C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779820953;
	bh=BqqfvsHe2ozXf5Rb1fRsMEWynNppZcqmA0TMDo2BoEs=;
	h=To:Subject:From:Date:From;
	b=C2ML/PGQnx0FOk4BEbhJVBv88vDG2uQHXA5Pta88g2tAs4qKcjfy9euLsERwJxJu4
	 MAfWcsJKoLx7J7ht89rxtRogGl4RNywQq4dwAsyf9z2f3GP+00XdNP3T/fses5teRA
	 DHCqAJiSXusFrv/nNDzqJwvsYbFdsmSnLcRcOnlVVyZiVWnJX4ZFrjK4WsCVElReQN
	 QpWnaLUOEg5d8cnTiOdQBRPeE3KgVRPl1fT06A7Cji/K8tF5wxZiLYdr1kxR5qT2R2
	 zQcmCFUjO2dj54pSKeZo20acq90BdSa9h3ZRF8snaiCaJd210MWvRMrEBoREJ7/dcH
	 j5iQ3ojig4+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B24CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982095368.9135.14618963326446018542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81775a4a83bcaf44c9f8aa5e4bdbce0587b66241e03e825f7443d126cd79159
Date: Tue, 26 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779820953
