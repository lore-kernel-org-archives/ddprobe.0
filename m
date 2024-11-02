Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D58614E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730538354; cv=none; b=qe+5KBx5Gnw/Vpwubtsigc43SQ2Ge4HnhEHBPlRE0V2THBmuelcdPqsWnZeXOSvIYe2m/r5/+llkcqKjEOeffWYP5UNMg0J3S1xJ1E23VYtduDw7l32PRl+CEZf1GnVZpiuJLsaxvRQiuKr1pz65+4qv/Jqr5usjr78q8ouWG2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730538354; c=relaxed/simple;
	bh=5pLXgutSVB7VdtrnrdA8ZrsBnaHMLrt7kqZzuwTGoIQ=;
	h=To:Subject:From:Message-Id:Date; b=hWqxgX28zbBvyR4ppoakWwQrPgVsBQMNCc5ubwQIJeDAT7St1LHG7bsYCzBWLxyAFa7NorFan0zmheOFenAG7yGAqPOLyICujyImJ2IqCsaj1Ts1rqOu0dDge5TS/C0YagCL94InE5zho54ArvnuK++4oM399qdBSaj0r7iyaNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7v/d4sK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7v/d4sK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABBC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730538353;
	bh=5pLXgutSVB7VdtrnrdA8ZrsBnaHMLrt7kqZzuwTGoIQ=;
	h=To:Subject:From:Date:From;
	b=a7v/d4sKUbnyaey3IoGg6SgxV9m6sZ/m8fju1zgBhqSLssj5v4oSe6Nxh8eUR2uY2
	 lZyd4FJmYODdhgS8WipG6oGnRY29Z3ilLfokrXIfFjZiyRfV2YnTFXz3fbS6OxbPfw
	 LhIKFv31CGzmzyUbqV7BNAl+s2B46RsGzVQFEckMDWGdQD09VA7NObFWwSJsI50eDg
	 PUpJYAZ3hDXe8g6qn0YfF4AtME5azx57ySBll1FlyAwJ8pjCdGDwX+BjJM1sTQXZDZ
	 BZ4bi58dWUDndRk2eZr8LIVWncb37hP3sRcMLL1C45TgXG9qMSc0FzhgxHzzvrpXHP
	 T5szGQ9DlSnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97996E677F3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053835361.1670.12376998619790978337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ab974ccf6bd6654b1e7b28355831e1a4a74c2e995c1d2a38732b07faf64d69
Date: Sat, 02 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730538353
