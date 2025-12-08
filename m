Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3CF4C81
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765185774; cv=none; b=OFO6eNKhiBptCFPwsrBl8JYJqWSIa0Du4KE4KRVCh9Ev+AECwzRWX3YNkluZcd+cQA8PkSdsd8MVVH0JH6gGYKPGW+DQYVXHzpQzXt0/3LIKX97N/WghvZpikyTJGk1ogBSPP4DeeZt5UkVSUPIbiq+ODvAmMcWX/eYOnnjCMM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765185774; c=relaxed/simple;
	bh=tGwGKWGa6J1p7CeVRMWcsj/uSuzoMhLSa38jFlinf3c=;
	h=To:Subject:From:Message-Id:Date; b=OEdmehr1MEnP4Tsp0xQIfJxuxr1C+k0LvIBMoMqu5mhFTXgqKfKeWMTQz5SsvLafnP1XlAVwklLwpWh2UrjgOX98zsGrPUv5K+tOjYtkqqP61jVCRIRk3jMisi6yjbDDeXy9o6nrrZ1f+DsfGktumjj7mdz9IzHozlcZx4aVqVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO6mju1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO6mju1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765185773;
	bh=tGwGKWGa6J1p7CeVRMWcsj/uSuzoMhLSa38jFlinf3c=;
	h=To:Subject:From:Date:From;
	b=pO6mju1zVTlouA1qq9fpf7blJ/LoorMwPVRhlkIRvw4NrQz/9HeTDH5xSd9P+DAhA
	 iT7/1c3qwUFlWK3R+gXdRUHjmjQUpQSrTJVHMqmkVKV7sSrWqWs23bA9dOM8wpb5eq
	 ndh5kltG8IoIIxF1xNWAI39mj0LKkSb0OuBKSZCe+1EdDtXQvku6e+WXsr4ayEJfAR
	 aGeKNe+r245ykDfWXfdbq5GbCCf5GEcDzgs89oTzKnYOxha4FPeZtEcq5mI7cvXXYZ
	 sPzX6wV6IM+rSHQUXSuqXfy5VHEa4w2io/AJT0sahwonyyqH1Yuf8SmtLl0nyJzPYB
	 dnaEd2I6h8sPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C7D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518577358.4363.12180875474583081975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85b784be292ba6f5a6edb539046470ba4d1fba76916eff80b49665c40a2850c
Date: Mon, 08 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765185773
