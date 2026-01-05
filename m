Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E4F1917FB
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767576834; cv=none; b=Y6LP+InQbPR0iDGdli95mbWMvT+JoYl7tCu2uAxklMrK5nBa17vwE1bSKXg+yiqhHbOgL9cfpm3T7lWiCXlBLHsu9KB0mqhvbYZiaWI8oubmGtWtDdmYgwZi0KNpfPlpbmI1nT9VldP+8cfiSro62YYO1OdHBrGPP+hE3I3jgU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767576834; c=relaxed/simple;
	bh=RvNzeBMrrTyCkUseysgYNFegt9JH5Tk0ctPJyCxblNM=;
	h=To:Subject:From:Message-Id:Date; b=RjPcAvFOgLwAv8t/kGQjGb3lOtJHte5epMxETyJiJA+ujJCFMPyRGdqBUMN64p6WbYwXNDZe9zhWCR6SlszQw45dv4Jhsna4IcJnJ8PaDtyp0bGy/NMSUzRfWJKsp/SObq/LL/3Oc8QQId5PXBD1SZQTiNJJzJYulORUNARXE5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K38QHbPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K38QHbPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767576833;
	bh=RvNzeBMrrTyCkUseysgYNFegt9JH5Tk0ctPJyCxblNM=;
	h=To:Subject:From:Date:From;
	b=K38QHbPXB+GW5d/V0lMzU1INDBBlhANfNHRu0+db+lruFDUNh6QKZXjIcNYLVYPwA
	 KZUobrf0Eb3+OWKWwIeiPZ1Vtv2wCuwunpyg9+dKNs6mDFYVvSeIOUIFYtDFDahkRh
	 pneh2lCoH7hFlXqd13JhsIaFEjkiB3CRy0Kzy+TfNE3bjpImm+2hjDopol3gWnf8z3
	 IkQjND+cXI1MWdaenhp0SKSbvc6mmYVAchQbGKa66aEW2iVASpH3zXI5Fmz66bH45I
	 d6csTDmhXmn62RvM1/EGvSfYAw3AE50sd4iB5eiKLfbfLaYrEIXEPN3Kfyi9wGOyv+
	 16ZeKS2jOw6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDBC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757683357.29280.13147425207694099015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b067b2f92144d24f31c10c2525a688f948dce94a7ce54ef66bca268d72c48e5e
Date: Mon, 05 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767576833
