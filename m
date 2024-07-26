Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49B7208DA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721975753; cv=none; b=ZWlOJci7UWhzAmo9dhCY1CoRSYFmvN7+KXhGPoDTNCYY0TtDydsDnnFP9fhAUzdybCclfxhft3awFOjBXu71BfFNZdOClwiq5lVAqI+eR28lJde+72/CnLmG/9qE21PVR4WQFCE7PJ2/Pc4ij/q3iwrrvybcIBlGVrV1KtaXi0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721975753; c=relaxed/simple;
	bh=cWu882fFjtQrNfn2d0UcrpERl0x6Hx49uw3qk4c5Cdg=;
	h=To:Subject:From:Message-Id:Date; b=Q1R+f3pVTOxlRs06fTQ8GtuIJ6zY967LI0yhBYdXlQELz+TsRH0g4DfUEqQqaZ7W8tF7I+DhW1cbnLLXqtq6VUXbvspdAeqkRaQCjdedJVSeM/Z50VpWkpP4KFpB5+V7aauefpcQ8I4ByYawumw9MqyOovXTd1aREnWQvGobT2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhv2ede0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhv2ede0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B35C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721975753;
	bh=cWu882fFjtQrNfn2d0UcrpERl0x6Hx49uw3qk4c5Cdg=;
	h=To:Subject:From:Date:From;
	b=Vhv2ede0PdI2RX9aaqscnSKxTbBXZwyHJdX6a/R1KvwI2b6TgGjHedG94NjMaMso6
	 XTNC0tf4FK9SQBoWkmDlRqP9Ms/8ghQetC0ies5ipA5fe7z+TGaLgR9pGb7iZ0Kxx9
	 Fhhka99GMWsuyR+m4ieUfF9c7TvLzVHaR5w0wek8EG4nvBHmXeMk6+5lKOsylQI5Vx
	 U0pzJVzaS7P4UDpdiVVV7xZCphvw36yUgWOIZswzx+kbA+ILNGsoy8FQwRb0jyrB2K
	 BJmmsX04R+6xjXl3Ajt99sStAYjzZjYFLHvNZinYXkcFBhzuW71zP+CVdaJYJaZKo1
	 IfLkU5lNdgzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96870C3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197575360.17746.6646251666542080707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2f455927b3b19b60e7095c4c5f5944fe39d4c029449974849cd252fab1506b
Date: Fri, 26 Jul 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721975753
