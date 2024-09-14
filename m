Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2202738C
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726277754; cv=none; b=AjIoxZ4cmN8RHFMbW7fpNus151voqB7EiNDwfXhY51kAesqLg5FRQ+U2X6ZkWQuM80peOva2VcU+SGTs6RaYFrzaM4MU0FRO9sX6h6xVfUouNO7FRlATYX/pDbGw1wrrSlHp3oYEHRXxHuXb+Vhi3OnxGoxy5pS/VeiUle6d9IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726277754; c=relaxed/simple;
	bh=W+Dr3D10u3EFuge9l+YXGJDHWHzx+40xZsqSnfGsah0=;
	h=To:Subject:From:Message-Id:Date; b=jqJJFfANGxujB4IMQ604aF9EvX5Ypl66I5RJBmLTljXoFa9dGIFkWpW4NSx0AjgItoVYCvUkZEm2KXfo4XGbogJRSVP/7n7NBWx9hNE9yqO7bsBSyZpnBaKy9yQ1mQ5oXjjEElUpFmMJDHTpYlBFSYO8f1ha+LbIgIkgTVCEqMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nld7RkmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nld7RkmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15C3C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726277753;
	bh=W+Dr3D10u3EFuge9l+YXGJDHWHzx+40xZsqSnfGsah0=;
	h=To:Subject:From:Date:From;
	b=nld7RkmGyUR9NizTnR4/tqmNlA6iJr242j6runJjLH456G4AAZVp8dAZM2lC4dSuG
	 uxnufK+ofxWvI7xXPOlOqlEsOQtg20G7f7I2/AevOkf+3KhVPORbBie6PLUDNdWTLu
	 zz3aUh9Xlc6Lj+2mfTsdd0tOLV36InEnHx2d0dSKDDU6v8DlfmMrVZIpJDZUl5wTkT
	 Md4NdAjE1xz1Z9rCn+PMixThYkML4IVUxeRt0eKM93fQWVWYXlliKb5w9t/7recg88
	 qnfFnNuxoz6xp3RhMevYswccdUlhshkw46sNsoOaBicFptnXqlDd09qG+CfbgQLuZe
	 djBhSj8n8vCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC53FC6185
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627775364.629.2360751267587655567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bf6bf053df0a0f72906c06946661b4c538c1b854ebe6cff3c3e1084f0cc9ed
Date: Sat, 14 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726277753
