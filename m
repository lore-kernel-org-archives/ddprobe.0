Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E4123A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714259543; cv=none; b=Dwv4h65Wd7G+RSO7k3B/MktwDF0mAWIo4As2E7PkH5DEY9hxO6Lak+YJV7PWzS6NPbsA5MrGt99TmjKooxnBDpJFP5+QfBIWW77LAew6vcTbC6j+4el1fd3TWRGQxlMLpc5CuLLDU12y+1PWgkOH38ZvHsYORKVI9k4PhyJhpaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714259543; c=relaxed/simple;
	bh=nNNinq2GszuWog52IamriTc9ApRlUbYXUKguiLEOR7U=;
	h=To:Subject:From:Message-Id:Date; b=Y/x5MB+S8iCe72AynGAa8gaPczCUDBppaPT3I9ftACpA5Xtec1RtcMaLSAiNPsw9d78vdUdvdiGoi9Ksc7D6HegyyCafXcMehI7tQt79cJdeuzYAxqsZ7mt/NmLYtUeoBKK6Qvdz6TnhlnmRCYcS6U8j9LRdMjvDKJx8sSrE30U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcncTSpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcncTSpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9664C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714259542;
	bh=nNNinq2GszuWog52IamriTc9ApRlUbYXUKguiLEOR7U=;
	h=To:Subject:From:Date:From;
	b=YcncTSplENS3AxUklO4lq7x0CIVTMBQN0cY0USlnGxgar4tjAYMEU4SLSUg94TSXs
	 8QTmmwOqJltHU0ItPTdtCXb6a3AsFX+xWNqZ8+wefiLsteo6DsZJNrsloYqvUJlKzn
	 rfKbslgD84l7fWQ6pDVJ8b5cW4uNEzpgs+NLadW0+gAmFq/w5V//oDj3gjieSfH2Bf
	 uA2soAUTdPTQofWqnGI4LOWM3EmHcfL777lm/1cAez3e+V2GiSGE9yi8luMa5pJRbE
	 3BZw/x9LsKz9eEnfnlQ/BODAPx8TaZ8lDg9cpQggaS+KdgYxBalXQTxsXut1BAo/3p
	 BtVeVDWRUrvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E86C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425954278.28897.12393292865132810686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b00c739bf5b350c17a5e879cdc5d37070275e6c1d0765d87a0023900a4c3f0
Date: Sat, 27 Apr 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714259542
