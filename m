Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF981FE470
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755370794; cv=none; b=SdkLx3a+ddrs+KMvM8n0IrR98rSDVievdwuM5kVdRKZXW6edP7eVuTDArhTN+28AZN0itHEz7tjX82hfPmzj/z+YC3XGpN1swxLwrUi31T1HBZlztwMBU0lSd5AjVpdZDm6dDA24EKx+8nUkgEaK62HjP9k0DaOtm1aTa7HUehM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755370794; c=relaxed/simple;
	bh=iaGRbPQhgOqKEiv7cMxgs8XX7hzMuHKU/ywIRILuHLY=;
	h=To:Subject:From:Message-Id:Date; b=YBqkUCKQk630te8x70pCAhgsbk6RRtXfmO3vhYW7eRQRtAzS4Fg1zAiO1/ANKJ50ESX14CJI0Q6jwh50VzMNm99z6SVNsZCA/Jq6GAKVdROAbK1HiRvWaignxFX+GrD5DkCR4GwadmxYpRQ36qWeJoBZuM75xbu9S1GXYyG5Ogg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUQLQUGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUQLQUGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7DBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755370793;
	bh=iaGRbPQhgOqKEiv7cMxgs8XX7hzMuHKU/ywIRILuHLY=;
	h=To:Subject:From:Date:From;
	b=AUQLQUGWU4oukBdeiDBBTMcd9ZRpSXVNe2qT8dfsZg2r5DV3R5d6xbyLqM45r9g42
	 9Ea3yVNLzZE1PQsIiuNucxzqjfL8Wd/fVotj8j2NtcMj9O0kuuHH8A/Y5+X22RUx4t
	 XTo/jCC6xb4KvwurLbVZnVZtc7y6nIVK0Q+9a57WEN3T7pjXCviC41RpyK4rjgE5Yb
	 wWAmCU4SYjDFKorRkUpPsbhCecqpUgzUJBasSEwKNipULhzdaDbzJDfE3oyV+r90vg
	 SqO8tlx0iNQkQEk0ojDMYEYYgWe4DnB7dc7lPBJBtejVFX3Vf2/Sphv2/jJUviXODr
	 Wkj72lOH5VF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF02CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537079358.1795.10062309789562518900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d80084172fe74f931644a4587dc8d07c757e1dc1d496d5e9a834ff64f99a0d7
Date: Sat, 16 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755370793
