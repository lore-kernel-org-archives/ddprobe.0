Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBCB1E50E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690834; cv=none; b=kIDkwF55AWXd6PPRDYOzZp1VJHG7Li2fKQTnTbZS9Xd8L67KMm5PgSdmB5jIQHg5fcqbIhuV75CD8Wg0pS51IRnEuojG8QQXf1Z2Ke+IRGz+yIQXnqoXsvs7oqT9Gmo0J05C+ngyrw15WUVLmToDTlHUaGjUyT0DQQLOTfQcDi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690834; c=relaxed/simple;
	bh=Q345BPDXg1X++cBwFw2rWOvboaQtpRghLAA5ELhdF9E=;
	h=To:Subject:From:Message-Id:Date; b=kxtqZr2++tPC6AtDfqw7sKJfO9uiyCpu5zeAZuF8NwoczFWEOvquLkv96HJYR3xQGaSORuFdjSAzKljuCJAnn++5qC8a1XE7JUDJPqctgCpqfUeul/Gflpsxd4XKDhUIOWq7kvxfOlrD+SO1smipxNPr2RS90ZPSZkJFpWJ69lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTJ7DMdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTJ7DMdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB7C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767690833;
	bh=Q345BPDXg1X++cBwFw2rWOvboaQtpRghLAA5ELhdF9E=;
	h=To:Subject:From:Date:From;
	b=DTJ7DMdBMdWci/uXt+gONWUcRYLr9sUAandEHGAknZXZzV6zjqdpe+t90P7BAd6tx
	 9UcyCyIvqnU+dj1Nb+C5AUbJHHz3/f9MKrgVBRHHCXzdSUSMLHY8g2iujrHRv/+k3W
	 MlKOOiD6ArTFW2VHOPPks43nqEMaoUBvglo8D4XNFOhipOsaNVmsCOkqlNVBCDOWaW
	 R5MdnHYhSm90LDccfIeVXe4U562q+aNCsZNvSYaXvuczwgafBfsZCHtBzw0ytgbtn1
	 vqomquEyzIvJE0s79ej4coURpT/d41bVyDu+w0aWfZ17gyDxcdj1rjCCpU1fmtJN5L
	 QlQuR4OdGvYIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F252C47BCB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769083357.20068.4892707568760410247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a191f06f99f8d561e3159d0d39e434ab5a86071686222f93a4c475bb133a2d04
Date: Tue, 06 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767690833
