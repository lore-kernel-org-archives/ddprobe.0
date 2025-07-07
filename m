Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17963221F1F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751921394; cv=none; b=G1YpyJAbbNIfyUxyy3KC2gqzMz6GRLecD0VizCRRy5Emd7m5sMnQfAYq5lCs9AyRNY90nBVzAedhln/932WFU2x7QKssDRQd/F+CBKmQRNN58wNFeywBoISomLFz6D5Le/dPeve0U6d3dqkWE/t4uqxEN49rdo4C/MIvMkYsI3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751921394; c=relaxed/simple;
	bh=Ajfj2FYaMr8C53GRQh1/oC1jfcKPn1E4hAfVn3jA71c=;
	h=To:Subject:From:Message-Id:Date; b=FourRWNQE2BwLody+lucwSq4F45Out//9uE/WYTXSPjpB15+Lw9tt6Ha2IBVcj97ZlDD5rGqH2OaiUjkUepYAZhctOZUo+GI1scwxs99MMDm61rA2uMjwyT0uy0FT6iUkwK5rNzGcwpCfmeYbU6o4HYCHtB10XOH++Q0e5XINtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjIzXjvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjIzXjvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A489EC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751921393;
	bh=Ajfj2FYaMr8C53GRQh1/oC1jfcKPn1E4hAfVn3jA71c=;
	h=To:Subject:From:Date:From;
	b=CjIzXjvKbAreHQuCqK1BbgXgxJ8gLEAVQtWI8vEKl3eGlBNYr6IK11WYO9xUU/K2+
	 bajQew+co5YofKXKlCVaMbz/5deqvn9MDl7WDqj3bN/eS4Fs5VwZyz4I/xi9VBDftP
	 mbe7cOx1sZNUSJwpG906+fZ5Mj79bZFm9ASNHxDqi7HW/n/QWvvFj7w8PeQUqCpXWQ
	 CBBY8D+JwRCmiBZWZ2nxAWMqYeNIvohUklq4e+MgNr9aZ5I/bkn5+pWijR+JQ235SS
	 z4Hmj6hZzOnxQSmJZCVmdgRvvMwdOPi9L+SLOfvaJaIKkg3nD7NyJpMIkvLA0G+TWR
	 ikx3P4WCoqb9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CFC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192139358.2249.11095769978218611178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5600a707f8263ecbe56d180fc4fefa76a94b026c6d2dc9651cd5c350e21eeddd
Date: Mon, 07 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751921393
