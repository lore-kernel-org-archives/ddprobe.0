Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439CB18A6AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737278754; cv=none; b=W/NlcbT6SglqSh7QmkazD9RDWNZ2xdOAv/8nx6rQ1DO2nyTgxFUHTyPvZHqWK0YX+uKcU5IBiB32yUk1J7aZY3yeIbboTYJ7IBtAnLBNPp/XTe11v7RIZ3hkBPOtdOk/hgC0iRa8v1y4kSZQ49QIuehgxJg+vVg1NviOrs+MayY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737278754; c=relaxed/simple;
	bh=OrORpjnisAqebau0jNyzlgI2yE8eM0R+pzrrhhmg69w=;
	h=To:Subject:From:Message-Id:Date; b=tFI3q+vFUxs+lkADkHVI3ft0M9DqgnfTspqc4qDJk7Mxqu9lBwPEn5M3WUTwnBUBRbkkrHPrsS620QX6PR48MkmQLGgpwXwDo0FPFeEy8iIsdO7VVdoCPHx86y0KYG4USmgUuqME0k0W7CHQv7uprLLeGwH2CzcqdujfVDMyKuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAkJqOGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAkJqOGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E24C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737278753;
	bh=OrORpjnisAqebau0jNyzlgI2yE8eM0R+pzrrhhmg69w=;
	h=To:Subject:From:Date:From;
	b=SAkJqOGsDTkIX+wlo3rGaaL+xqegQvusncjE1omwDGhmGYwPK7klgnACLsm3coKrw
	 YY/OyoTRMAU7keTAw2qzRKVZDr3pCtySwej+dtH7UNe3mqUourGhfbCM1K6qcKAvpD
	 dEWBG1N2MMYQmv37pLjSzHp88HQ+AGmtrirzv2bi1U9buWeg7ZalD+m5O+3Wgwx9/L
	 Krw9lj7vz9vo2s9ZJ6K6xGPTkx3uRN/7jmzHIiF5VfsOQEgrEePuQSXmxyaRKgWQWg
	 2SJagfQr5MgSa2t+r+XcHdoPVLpKQJLu5Wg4hqX6Klhg43K8XmHuUUMnBudL65Vy5w
	 2cDFbBjBUoSpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2BC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727875358.18230.6698392064638903635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb8118ce0f9c99f5a9c9d2dbeb5b459f5c65ff6517fa9958ee5f01af49f7950
Date: Sun, 19 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737278753
