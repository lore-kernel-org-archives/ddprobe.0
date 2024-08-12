Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBCF2F2C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 19:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723491955; cv=none; b=Av7HXM7VUk0p91JTjckfwjRAT2j7OLWiufpnHm+4QfhuAPsqChpnyNF6r0HKEXndkP6nbJyut7hfMVxoQhyUpys4IOxMEA+aGU7UQ+8ghVnEVxTFwK7rJNMPH0IABxU8hJm4axw71e6Ibn5jh5bpy8ELHz7umtc521b3qI7oqHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723491955; c=relaxed/simple;
	bh=IcmsEMphE5lEgh6Tq2Qg8umK+FSZPon6zgih63Hnx4Y=;
	h=To:Subject:From:Message-Id:Date; b=b4Cgsd4sHplDKQcmO7pqbR34rvvPYbK7vcIarmpG31CiyuxtfAjSPoEJ3ss+cqCdtl2qybej8vc5m8UzU4ECr6e8gojuWtgsJlCnqSPlLJgbAQ5PDIl+0Ds0/dE6up47igIptEf31yhkpYTcUhgFysAsgAjuOTmYo1PwzrM7Pfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJxf25Zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJxf25Zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2EAC4AF0C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723491954;
	bh=IcmsEMphE5lEgh6Tq2Qg8umK+FSZPon6zgih63Hnx4Y=;
	h=To:Subject:From:Date:From;
	b=EJxf25Zylmx+BDQ34aI3s5g6VvrPTOiGp80MYmNmtVHuJtnJv0o/GjyempG44UT4+
	 0hl3RPl7ZGZGD7dYqEEmY6WAC8TKkmBK6ms3e6mmxa/7vxgRNvbQZHj+QSMvXuiUwE
	 nI9U88YDDFcXDeDx1e3ZoSBQtDbUrV8D8zFr4pWtTxBG4voyFqBfr2vDs9Unqdr37F
	 wy5pjQCWXGRKT7VeyvZdYU/cgznrPiKh70g30/G7xUggWI2oWo9BgPZWX98zRk8QpE
	 cGVz/kNh3SgXK0j3UisFl6NqFvWZQRZ9BQBsLPcEYiegvJBCxMKuEo8eaUcGDx4iKj
	 qeWLuD1PVC3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA9C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172349195367.2847.500051349522783714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8a057ef49d23bea4523e8698ee4e80870a0094b148ff12ab9cbf893805339a
Date: Mon, 12 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723491953
