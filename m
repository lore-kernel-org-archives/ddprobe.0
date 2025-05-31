Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0E19994F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748716194; cv=none; b=G6yV6YhXDwB82H+T+LyNu+PMYGEBYxAKc2U4iLNxNpn2PbOvilPmZHUaXqnw/OJjHd8a01D7HFZGqZNxrG8S4qH+Ivm3ZtqYw6gybFryaYskI91ULYxb7KDzY/dtsX18uPg8ksByZ7LPNDXLcXl8BkaXb9i9yntXZ8XHfvPTYvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748716194; c=relaxed/simple;
	bh=uwAho2dIdZLJd5GnomER/ycF9wBl//jfXyM95JMI2r8=;
	h=To:Subject:From:Message-Id:Date; b=drZxE34CZ3itezBIJlL5Dgo5FRupuHQeyF5G8EMbMgEbjsQBQq5G16sIrElpY8UNy8+Inwokap627qDSjd1KgZkeScxaq/dxvgYR7TvPjteUTsGLBjLRL23m21pnJ7wKNAadWPwqyUodqLcTYOpyapR7QTb//oFFhpB+RcTjZbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab9E9kUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab9E9kUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8975C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748716193;
	bh=uwAho2dIdZLJd5GnomER/ycF9wBl//jfXyM95JMI2r8=;
	h=To:Subject:From:Date:From;
	b=ab9E9kUcz2sw+m8VCjO49nhWNHZr/yj82LEQCk/5cVy/tm1QoMbG29ouGEUNy/qLL
	 Pj1QgFiP4XENPE6/OaBLUkR+JdQhCCL+mo8jKbvg1ghy3m6R3JahU4wL3gqhRFCpn0
	 Adi0FXxN449gP/fC4m8qCbfyCAj+80jdcLSXOX72RGmrOIrihrQzkylTGg39W7sLEF
	 MXbf0yMP3nT9s/sjeeDEywqhDqdsBOTDF3Iji4doLAghP3ZPZ4PyJpk2aIC8I685Pe
	 iu8cg4qNRpcqkkO4B2jIDG7dd/oO+6oVQ6Oz32Uf2323OpJ3x9wbIY6geS0D3YsBnC
	 0i9QEZo33l5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A42C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871619360.9576.12136047815468728420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c210c65edb2fea75072f0c436cd50b69cf2c890062971b618c8d769868d79e66
Date: Sat, 31 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748716193
