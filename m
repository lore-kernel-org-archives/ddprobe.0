Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C3E19470
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721244923; cv=none; b=HJ1U0ppjwOW9V7Ry7D9wCQX3WZmi0Iu0kTBoGj9xl1fPcYr9p7Yvt+zbAHXDf4kBSqrulaqaNjwxpyurQTJi4T0RTEmz9iyt5NhheOHPLCJp7XB4/1IQ82pxGpl+E+0P6lWdoJTxjq09RJPRDOTNWbZ+C8a7M1ilaqkEVJb3lp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721244923; c=relaxed/simple;
	bh=rPQD3uy70JQxKooyrn8moBRxHyAB01U0N//0LbIE7HE=;
	h=To:Subject:From:Message-Id:Date; b=N0SUj+pmwY1DGoL/raZ7G54rStQy9J9KDbkCi5Yj8oxnFuXoGoqP3rZYrnpF3MsslYzyvUthThN5mL9uBbpMsnI6+AsqSDD/3/nJTzN3cFcUpKU8r4Xy5m1sqJ9g+x+99eU36qWTwCsQy04RVd/X2mWpteK6oFt1Q+bOZys5N3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFjWXdfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFjWXdfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D01C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 19:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721244922;
	bh=rPQD3uy70JQxKooyrn8moBRxHyAB01U0N//0LbIE7HE=;
	h=To:Subject:From:Date:From;
	b=OFjWXdfFvVFm1Z/9UkxXsL3y39OM4IpXUFSy+mAhcc9IqjZRi//knC8TAdwSH6AQi
	 MPrEjJKWKg8w4evc1UMOVoQe+bLzLCbpZtUEy9xUv1s9MWK8aLlyn2Owhk5ppP/7l1
	 59ZWlT5BSZJ6be7H0M2rpBwNxSOYYXimXDpw7/rzpLrN4XZ1dZJBZc6LzG5kmRZSuK
	 SlTDyvNvc2Q5Dd18KCyQUT//eeCsHYaNnmWhIugqztdNz2DtBmoFUCXkTM3vWg83oy
	 NJqjEbL8InEXK18rd0Oe2A3x5aPlFeZm59WPNAnZVLbDW31v7/j2RDN8QjjpnZcnwj
	 4prtQJMfJbSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22EAC3DA62
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 19:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124492276.16013.13242986030213138549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062cd7b1ffaf9a18d87b8d838815c104379f810e832d17ad32d207b85ce5cd81
Date: Wed, 17 Jul 2024 19:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721244922
