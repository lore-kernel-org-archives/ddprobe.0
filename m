Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D492189B80
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745614794; cv=none; b=k/Uwak+clXGdJg4lm6dNbT4fapMlMvjt3FQgJaZrzQ2ZwSe0JslNzxec51gLHXgIu3EDWOevi0aYqmnLUCPtZD5seOUv9/V3QWdHn6KpWSrEplK/Umu9i6BpOYRrc8Z09sp372bFw/JDxoifmdoPuiRrpEIXDxZw7X3eTLrW9DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745614794; c=relaxed/simple;
	bh=371sK8UaaryAjNUoJ9JelVDOAfSC10gj/oI5bqD7y4M=;
	h=To:Subject:From:Message-Id:Date; b=LsWyj8a0EU9zzcGjLJUuxotyOr50i+3if3bNfxRy/JJ2/ij5y/MZ10HfAI9iaMSnFkmkXX84i7PajG05oKzsW83fXkD9fpGobJWCoDGEoUOOJLZS0PRogZ9Bypuh1ri1CWkQYADThf/9SDW3nlWj2ntFDZ+KF7LuxtdfuZVRtCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvVaXA3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvVaXA3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A495CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745614793;
	bh=371sK8UaaryAjNUoJ9JelVDOAfSC10gj/oI5bqD7y4M=;
	h=To:Subject:From:Date:From;
	b=gvVaXA3mZkz8rwLVLSBC1isTKpHxvF3HAEfJnlX48tDKIsYMqpEtYwuBT/Yh51NvG
	 sZ/OW0lvMjpiuyydgM+deF18eHTkCCbCy0hX+/Tr5Uh1j2nA9juUH3Xu48mm0kE5C7
	 mvBXciF+czDz6WE5+0NG8s3wUYTS2gR20DGNPTzhGRMhm10WrVVdSajry3RBra86Uu
	 SpiPbkrF6mAgZXl6p4CMyrjVhfANX1S9ncGBsJE9D1UFCXkMgJnX19X/1rYh4o1d+4
	 dhvI6x3kUfkp9tXxG8We25NWTyXICH0mueiz/xatmlWh7UqFzW+/3pH+aylobzFlNI
	 81ccDe75+FkGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2EC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561479357.13092.15859333866038764883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cf0d8a13fd6213ab7cc6eeb736464891c65ffa6ad4f566e8a1b02fcfcff452
Date: Fri, 25 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745614793
