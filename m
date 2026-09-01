Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CDD3AB286
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788283234; cv=none; b=MIyZF3setMgREVMdjSMeYvGhr8zP9rm5CExOE5YWsFRPJm7ixHL/uh5hwZtixi6njcPKUP55917sliUbpV6l78cNdl1WY6ESnDQd7ImyjFOqvigNYLrAQnNSr4Sxuo5HL78e6bsqvsDrvnT4FY0ZkiYbWOQ3oChgO+YHfQxcxF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788283234; c=relaxed/simple;
	bh=2wx8DgCS1WwACN4ETZWQWsaF8ER0Ia3dzxlz1OaB2kk=;
	h=To:Subject:From:Message-Id:Date; b=ub8l+jdkbj4H124GsFdP6DN2INH+U24eK8nZjwuZhFhZ16Ov8hpeW4/bLjZlmbVvP4nUtO5AQi6N6xsXHPI7/HqNpkaJ5B7Yi69zhH80L+gKPV5t2WlcHAXQ6rsGB5wI0BAGctPiAdAJdjwseBZVSnNkf8cGWZeqticLza/YEng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkyxfOpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkyxfOpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD45C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788283233;
	bh=2wx8DgCS1WwACN4ETZWQWsaF8ER0Ia3dzxlz1OaB2kk=;
	h=To:Subject:From:Date:From;
	b=fkyxfOpq4P++SKWXDFoADOc2DV8mbHQKRCqKYwjLuHFW3W1dbsfhQiyJLr0bjDKa4
	 dIdct8zG3Jk/W/g8Mh3ge7N3eEWqr2ntx05bOdovNPHvCQFHxcFzG/I04zjaZxL8WZ
	 EKMjHKhwV1mBYccg9pHzZIULJi3Ltb2m/aWvQdymWRrsxau7/MlcZlgMTmEiGqpoRA
	 Piy7sbL8DUhMfPSYvFlX+3ZBtXkdQj6eotAgx5q6Ut38PBMgIcRHiCbeZK6TKFiN0G
	 9I3CGyqdLjEsnFTwLwzJTlC/NbG8VD/gdPPNlqwTEKWmfxxom2QOmeq1rN3+6aA53s
	 9ACPlS1emhJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5DCC624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828323369.6331.4364262651625987254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694249454d5d9433f67328c2724b28e92d456736615a14bf644c0d001c1452ac
Date: Tue, 01 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788283233
