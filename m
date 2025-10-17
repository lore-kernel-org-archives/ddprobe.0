Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127EB2DCF7B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760741394; cv=none; b=olVn7lVjE2cMmQPuWUy42sY3Obn+xwzzy24t1MqJ8U8/Z48r2/Q/mtDfN+2roxygOJPpS8rtfRDmW/o8f96LQYry2tueBPyzVzRxIdHCusAhTXs/oD0fQFWjlfbNNl7jL+FFWIGDoeRCwKL5E3r+YZnzJagA0AIzGnI1WmL+z98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760741394; c=relaxed/simple;
	bh=/1CAZ6godbiGuH53piot6vlmwCipcTImXAt4nR0uT8w=;
	h=To:Subject:From:Message-Id:Date; b=gz/qEhK7DLkjkYzQshh8Nrv/KjcRMwtnSlsyqIW2O0zWt1yxeNp2xTi3QOxhiL0mgDui34vwl/eq7kEnyr+8R2bUD0xjF+WUlFLN2Iean3NLb76BmGacUD8A9LtQOx51GTA4Ayft5ZWqF3dPz1Ynm8lkPQlvVkOFFwMhuHkf+B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIPkQ8Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIPkQ8Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F30C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760741393;
	bh=/1CAZ6godbiGuH53piot6vlmwCipcTImXAt4nR0uT8w=;
	h=To:Subject:From:Date:From;
	b=SIPkQ8Rc6o3+t7Hmnzzt4PFQA/kedSc54JjRy9i8Wbq9YNRvdczIiDkcLzl6ev6BE
	 9QsquUe3XqkiLWIF9JxbKbh8B2WnBX3j32YNZRYyl9/98Tb6oKk8Ojm8KuDUwciYCs
	 dXHfKnku9Vn6ORYM9B8blZh77u1jlUsoCPmQPIMSnYgYKeoJlg4u4Ak4GICg0JFEPl
	 4O39z6ZvXyXU/uqJPKGOxWVCwMdsz6OhbuNyRTjsZYJU0IlhNiiqqxegN2ymiJ+JEl
	 ryhq0stqms/C0IFc6v5WRCPjZ4tHN63zDjHfI2NhNYVl4ZEHdWLDVy186qXpF6ti+8
	 Nh3rIuO5akUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FECCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074139358.23786.8819825401352768619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3706c6724a134454246dbfbf3780a0da5111fb5cc61cb0f720dbd0e45d64827d
Date: Fri, 17 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760741393
