Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C4E22578D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764619974; cv=none; b=jVlRkMvSwYZQ0ACN++/hXqbIp5sKAnB1lHPaZ2I0aTdXIdrKzeyJPr0XoYnQGwCVCs7zOE56+zIb9g1hx3iMKNkJaZvjHDnvflhLhDeSLdXv2juixwQA/iCkhc2miQDdW6T1QSrsLZtHfqsYgBNfcuQXnS3q7t2tL99GeIG0+3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764619974; c=relaxed/simple;
	bh=s/wcZz1Z8dOhFpBn/kpC7ej2U8D4DOmMW4v/QSQh334=;
	h=To:Subject:From:Message-Id:Date; b=cfv9csXGgubJe/rD8gcicpMn4Zbq3Q0ZvK9S/1J5rQdv2GMfbue7r8syQdEfqn19JKuCtuAfVfwqz8kuzu8R0SPYHHbuhcgFHZ1WERHkrXCPlKgE6Zb8zI2S4MpNm/2oVe5Qlz+L4fdxBAD9v12Z+AWv12H/ndbrznRmMIyVQ2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evCW1lZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evCW1lZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764619973;
	bh=s/wcZz1Z8dOhFpBn/kpC7ej2U8D4DOmMW4v/QSQh334=;
	h=To:Subject:From:Date:From;
	b=evCW1lZoj1Sv9o3Cipi+8UWHR/QcJMHx9MGdR1v0R9jDl5xMAru6VFhpqXdydNI2N
	 P1bRWL+cyiGYsVlprI513wQ8O03PGbvAMYSjUx5+Taj5TLmh8ffeaoMGbh8IGpdTqa
	 O61fvbJNUWpaWSeSTTFIauf0ySk3WiGxFsUowWhpTgyfe0cTBbYqUvkU8seqAB2Gk5
	 d+yYJpDtiL7+oAPUBTDHCvTx8y6yT4OqPGIpQfX33kwWa1i27H1bsEEcy/DGW/4pOo
	 WJ88vTRfOZlE9LibozKvn1ONQfdmB6lBLSjxaenOGj9zTVx/tKR1ODx9uJgSpWdwqz
	 P81OWlCsP1Scg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B1D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461997359.32399.11566087591285302454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588b2aaa54fc9e3c13b1bba3224417de1775349ae783b70b635de7a15488023a
Date: Mon, 01 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764619973
