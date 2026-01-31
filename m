Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C803329E7E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769831034; cv=none; b=p7Kpi++PUHaPsDcTdRid0k8+D3O+p9BrwhNqZ88ly/CBUIbUt6MA+UEfM4JGwr48eGhKYhzgEVoSYjPxgYRFxlps0uNrxGm5o+aNawSyJUa3uQ/0DCnoa5iWihHXtZUPxqpnsd4g2MUzdoyEHrx+ttAbPGM5209T9yDDJAV9Knc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769831034; c=relaxed/simple;
	bh=cezB/olsIPa+k2hfTnUUliASRPCUVlZbxmLZpRzUSwA=;
	h=To:Subject:From:Message-Id:Date; b=pFF2g6ubqdPZGylnZLmIl3GChnwLoz2bA6sw9RhK89rf3DLTYVYBDWXXfrKejvTXOxH9fX9wmqCcdASVi+CEUQPhcg7+Oin+69JyRUXCmWev/nEL8T0Z8AcIwdpnI/m7ooHA0W3LRL6u4WcC2rbg4MP++rfhb+EQVo+8f7V6QgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLSDDNCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLSDDNCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5F7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769831033;
	bh=cezB/olsIPa+k2hfTnUUliASRPCUVlZbxmLZpRzUSwA=;
	h=To:Subject:From:Date:From;
	b=SLSDDNCP+dO80W+Hu5cMKTNtsdxy2kxjiKhIYL9K4XEADnnShX5BC6Ya0A+jw3e31
	 /uTJDA+aOOMz4n1+JfkYgqAkMd2AVLVCbsG56Dj95gCxCu+FqE5QHVEHAVxY3XAZq7
	 ddaFXnQjWI3n1SklIIQKKrTyeAICe9DANEdLrTDhQLccNiNXl3CtW++YXUDMKry1De
	 Q9FLrwZl5sdG+w8qhnHa4auC+w5XXokJSIyvgkxYJb/5XID/Pfw3f/MjTzrYqwww7a
	 CxLXLfeKVv1Lzsy3Dj2sCZ1EHkA/tMrE0RW/gl4g/XQbHJR5g+EElcP7Lqe/9ggY/d
	 0eIQjt86Rr2iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFF5E6BF13
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983103357.17608.8287789005029959275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf70db7559d3c4ee8ff3470b9534e6ce400bf4123edc313e24f9812ddea8e03
Date: Sat, 31 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769831033
