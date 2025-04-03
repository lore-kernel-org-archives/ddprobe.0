Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513F62E62BA
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743720594; cv=none; b=l936UUIRUytn5KSXe0Jf3QW3LRr0IckKMKoZYS8rTD6y049I/8KkUZQtclVx2qbMQlDUUroCleEk0kozjhXb55ztd1QhyZIa+aiplu9gYuWJwSwvLyst7SMonIShbXAsUnmN0C/Mm6XI8gtXwpoihk7gLQkEAG9yyKSm7aCFv3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743720594; c=relaxed/simple;
	bh=4ByWhaXpxy8YVNH5C/J2VD5PieEcjmv1HP6yuykfyY0=;
	h=To:Subject:From:Message-Id:Date; b=biMU0hTqqUpw+kavbxsPCsmc2E5Ltr8YNJ85wQRwpxfyErnV+slJEsqcTnGat4Dv0pyqDurc68QmO4cra5b0+6ykvHJuSttYFC5Zd8G4JeeDji6Qahb8DauwWWNE6VkjoMubYF31kp2puzLVL8lY/FLSgZ0KT/q14K0e8QpsaQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEG2HI1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEG2HI1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D49C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743720593;
	bh=4ByWhaXpxy8YVNH5C/J2VD5PieEcjmv1HP6yuykfyY0=;
	h=To:Subject:From:Date:From;
	b=EEG2HI1tguQ+ULqWtmEeI77NkGA9N/c2raRjip/d+QQfcvuw0exgl7MUCOCrJa3VC
	 IMG/2+lPz9VZG7kI0N8HXetyXHHkR69/7Meqh6GW0wsf8+IPNvzwszK5WQTsggWU5t
	 WS6dnGrsv5ACFVuFqK31t01kyRXLXuJXhXYjX/d8E2n5Kdr7zsa+KogmU0jkF1/1X1
	 Be8YULQx/7LG/1BhYPvwWybyXEc6ZI4Tf3yD2mK7kOJnyX0/0jyKpvwueVaRvP+nrz
	 mwI5JAO5D6fYyR1so7swfTHA3yS3/MElsNVIHj/qmhirc94f/LYJL7b++SI0aKVB5Y
	 k3ZxitrCoV1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09FFC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372059361.16809.16556041342499180340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4c78cf8d1f0b3ef09341f423d6772b967478031cf9d5171a01b447b54cfca1
Date: Thu, 03 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743720593
