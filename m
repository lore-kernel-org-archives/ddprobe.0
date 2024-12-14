Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F14B168B1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734219354; cv=none; b=F1J/bcURsNUHohekZFoxP9PlS/o5WZd3OigqcejeUNvuOqaCKwyBBQXyW8nECZtPSzXpZI6bycAn+c/ZSjyPUfE92Twdyoyzy2FiK6pQC+IenMGwsFDj6RYz2mlQHKTxTsgyurueoOKRVmPYDHB9Oab0exWsZdrte7Mc5EX4aYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734219354; c=relaxed/simple;
	bh=CsPe+pmZIJzgZ3KOUGLMMfQuQ8SYRhk2bG1ZGRIchOk=;
	h=To:Subject:From:Message-Id:Date; b=GckMyHfMBmCbdQqvr30b2/vIHXRWnLf8gcBRK4QpHC42cgo9qbaNZAI+b4ELTyFLGR4E+39coLnTer82OnX6l7h3jzdijsNfWIiicavScJyo3hMne6XNHaXjwGcSxbkfapQAVegVx1HNxnqhmrKtzAYwrMItMcDQVpiOR5GfoXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASeGrQKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASeGrQKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734219353;
	bh=CsPe+pmZIJzgZ3KOUGLMMfQuQ8SYRhk2bG1ZGRIchOk=;
	h=To:Subject:From:Date:From;
	b=ASeGrQKzhjA7Z2SzeIhgoUEMdjZLADX5Lo9zRx+Illa2jJI09UhILucGhK4IzbGGW
	 9WeZQbLHoh9JkHPhgBwooglU/XlgAytQAyFRATQlcqx1ofeK8+scsZQ8x5Uw7IDxoh
	 tvJB8j+0hKjxoM+gkiwTTQXmNYtKgxA/3mRkybdCEE/6fat88TZGYQSUR8/UQnZsFD
	 e28Nv+d9eb8UKGjlAjwlucKwgCZn+vnot28adC2KzMnoRXXZyFglkDrhvjgWDOEx6n
	 2lfyy0Uz1XQQ7ubhAogNOwwPBkNQCDm3mwo6ai+S4ffVtoRm/ZXjNO50cnHoZ1+6n9
	 x0JWbT3SnfqPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B42E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421935358.4730.17979125689774183530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcffced315bd568544e1d2a1434671474c62b4558e15ec606d860c3cfd43d08a
Date: Sat, 14 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734219353
