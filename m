Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBAC1946F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717187063; cv=none; b=N3ABe3nTMg3jICW0CvDSqb7b6fOlq7KMeWiQ2LmJDFR2W/l2g2yHV7UywSG//oFk4GInoH44DUEvPssLH4Stf3pK7IyeZavizUHGWyn3WEe2cwO4SJXljlHzrP+4k0iT1jVBHmga8y17aqLNnKMEVnR4gev+tKloxxPmLaFWB0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717187063; c=relaxed/simple;
	bh=PYzc7p6eshmMZ1gyhlVWn3OkUvhwF0kACzW1J9mcEWE=;
	h=To:Subject:From:Message-Id:Date; b=Z1MyzIoXeSkVYAmNY3e8rWuOW86jxayrcg0nSvoNvZGjL94xVWOPY8BZMRzMX+jemgl6Ev1f41Rc1BGg/wPtFzsU9i8S/uyY1ub+LZzvCP40VkVY7byZsMRCPgGQ4Qm2AScTzLc2VG90yqwNRABjr7EW27oIX0MA9ldwk4m3qCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1F5yk4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1F5yk4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C85C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717187062;
	bh=PYzc7p6eshmMZ1gyhlVWn3OkUvhwF0kACzW1J9mcEWE=;
	h=To:Subject:From:Date:From;
	b=M1F5yk4eOcpf03OBbZSbgkpiCaE3UOR7fbD558Kq5jFT3MTQoJSW67A4h+53ljug0
	 GDYCGUI1mNQsWoXEeJ9QjRwquoi9VQA68hyVt7ceDo2rjND2HPKoTTltJcYJ5yD+vm
	 y2+fNIjpwCXY8EDZCbfjUA5gk+alkjKovtg9BTvIoTljI5KamXF6N2O5taWfjOfrAt
	 MXfdA8lcGtKbG1GjtthPIKTZQhWNQfLKshMug8j5ZysGBATsGcmSpPxhDCMNw/I+WF
	 vKzH8FsfTHaJ/PMUOi8+simdPX3Wb+wNlAX/AYsPVDAAaPXcLb7kVMMRWxkNAFMLSi
	 eOZB8rI8nTAew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6F4C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718706276.12591.8145993874692124884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cd10c85847ab0d2d5761adcafa39e9daabdbe076a1ef8d3be4a1a95784287b
Date: Fri, 31 May 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717187062
