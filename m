Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282011CFBC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736636154; cv=none; b=mux4kNuqeZK7emLnwXDUiTVMXps8bwd55IJk9F5bRMrVGnZLIUC2HavG9OrGlXfoEmlzRaTohNkUyMxIq4u05/uYVRL09TLHiWKgQZhnHnEcWK2jiCYTm/8U4eCctjiyFLV00bY1bhgvAmRsvPqSnkQIys3KZBLSU8w6FYISMUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736636154; c=relaxed/simple;
	bh=uhI8DHh2XDxy9m6h/mNsdkXs1fYW1zLTdLfuJ4GxSQs=;
	h=To:Subject:From:Message-Id:Date; b=EVP8hFLPE+Y3eu9GNrHVM2Mh4VhPv2Rm0V/on46MYGRl9luXXti11nwx5CRjRTfmSgK/OdgNEgfcoTESxxtZMKbdpx/HXGfpjUSJA8gWLwpmYkRNlaJxzEcH6emTOc0VoqXbflHcbFjK4XHKoQcYTI9gQx8lJWV7fK0F3RwfsRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sS0RbVk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sS0RbVk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E45C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736636153;
	bh=uhI8DHh2XDxy9m6h/mNsdkXs1fYW1zLTdLfuJ4GxSQs=;
	h=To:Subject:From:Date:From;
	b=sS0RbVk7yDSF9iNO9D0fR4HqoalpwterUvqAgNP6bS1ZpqO/jdV52fowkrwOwWP9q
	 vKmcqtNC3x/31ZBk/9d7DL0KFzkqxyKiYkh/rexO+Ke74EHrn52cUs0IzMtBGsK/jT
	 +iVHBoQcz4GaTbz2CmIKLvySMkL+fLZs43OcCDGt9d6FNGbjg/2XnqCLEGNVhqldCN
	 q2yEhXtAs86C9rPIDtTKlg3o5ofqr6uFNCBjZMOnJLqG0iRr+/6ZJwr2gPFQoWmA2z
	 VgUswZqQ86z7bBjkVuFNTJuk7x21XaLXRjcqY976LBWkoyp7saU+9CzFGi1ia8xFAT
	 Y0k0Gp+q3sLVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CEFE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663615359.1063.7777105881593253172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0621f8e7e44e47363917ca6326bd3447560effe338cd6a507413dee104ac3fce
Date: Sat, 11 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736636153
