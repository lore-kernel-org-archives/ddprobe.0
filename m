Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4406F157493
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752568794; cv=none; b=Fv40wD9xOaZ6QiOBmcHy5NQ3N7rVVWnYF4RTZMQlhdJT2xd5/QIizk+zsY0XcLJ+Oab0MiOgtt0at+sVLuYZe6/0emF8Bsp7dT89rJdVd1OCG3m99c1qQbSDi97tu5kFTtmpAq9P1cdXPOXskJ6CP2fBow42J5ZN/CgOY9oUjP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752568794; c=relaxed/simple;
	bh=T8tM4n1OhDNpRPNfP/xSc7CiycTFJUotSbt69NI6nr8=;
	h=To:Subject:From:Message-Id:Date; b=G93fkVNfeTjhLQk8C8k8BZrrBphzzXqkTzv6itOz0ua0nkhYJ1cDkURkgkI058pC3OSY0B5Q/T6yziD8tOiSsIxmrg4RgaBaUol64IBXxMfyIX9eelNRfIiIohDynZhbG2Qv4+EmPsYYfM2KnMR6t7N91iawh+Bb87Av2Hi3FO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsLVSb4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsLVSb4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C4C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752568793;
	bh=T8tM4n1OhDNpRPNfP/xSc7CiycTFJUotSbt69NI6nr8=;
	h=To:Subject:From:Date:From;
	b=CsLVSb4q3EeanGPDmppNgVhSfjZYCznr7peKUfde4Pxf9Zlm7SyJ6YPsyhZeujIxh
	 2qLhgfCu6Zu+94YNRNH9fUhwGHJRkzvi/fqzssihuseYXTF5USuyGX7YsqD531rLgP
	 /CbwzImsAvmgNNm2TxTsQ7seyuOpSl0yVwBj4zBuK2HRwdds5tHD94f6g3Wg0bDAkM
	 kCMfPm6BlraqLSrbm3MjV2MgRv1h1K/St/5DjNui0NZAvU9LtX7SGtbx7Ct7gm+ser
	 0J5TGZ7op8UsrFKZvY+9JgPpPPgYt11yiicyJS9t9kHezcC9aWTdtWgDOpsY7ZBmR9
	 u7O1xYKc7pyww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92251C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256879359.10489.9462259245246165424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21cd249462371dd59ca1a429c4f689a85739f4828eba6920f27e318c8ae7ec6a
Date: Tue, 15 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752568793
