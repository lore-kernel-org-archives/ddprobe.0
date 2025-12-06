Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379CF248896
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765044174; cv=none; b=ZOuMHlGsuwAKTHAe3LoZa5cAdefGgvqPxhcSGVBtS51XkcO2QNMv6q+lBaULGKFAwfjFcWbUR2xGHpYFBZE1swfoR2yHcMWRuzQmcXKvDcvJGDiQtXR3hA2lxdN8OjWkNGrBjxYjqaBQ5S2UvQG2+n+tWLXwRHGHTbhm+hnCVnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765044174; c=relaxed/simple;
	bh=HQ92ghV5TXukZ9jpjnlKVBAJTN5ZOV44/UA9xNTHKeY=;
	h=To:Subject:From:Message-Id:Date; b=SykeNNMgC5s+37HjlvwStPLg/e23GNfvSwl71ESH6GTCPwN4FOYT28mvemdqnckEWFVEF3iCs/vKHIFFqDSOpSQ3dezsCZIJE/I1GMsJV07rTRHHf0xirpLP2qaToUq9+oOslot5b44xuza+1t0lbEB/J+QbVn6eTcWCAjlutPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxWMHDk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxWMHDk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC543C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765044173;
	bh=HQ92ghV5TXukZ9jpjnlKVBAJTN5ZOV44/UA9xNTHKeY=;
	h=To:Subject:From:Date:From;
	b=LxWMHDk0MYQ4HRKXRlbOEEIWLhS7WJfgIZQML4mVTlNxU1H6eGiXwJ6IRET0Tx7yj
	 CUJJe+oHwtw6Irl0tDAIZy2/dsdGKNu622RdpbcDD2C/u0M1zhls7b+wjc+AskAlYH
	 8JdVy+zHrDVukMLjzVp76YMOyaHraCKtoPTTqae9y+12Y1wbAIg0kjd7BESSUKtrdM
	 VmHUALSfWkzSRBjUhEjLJCo0RVO5IGqgRJWMUaHJ691wAMyJdsBBeUPv3EefTFKhz1
	 PcCl+eeeVEHtKhhaWzy3dNOOVq0o0TGGKim/OqI2fmcM6F6hKdX9kbMuF2m90nVBiD
	 uM6dFbo2zXrvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95046D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504417358.30302.3509606434284961328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f223e966b890bf89f1815c95f9e0b470830d425e7a1898a23242c14a84f6a939
Date: Sat, 06 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765044173
