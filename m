Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641643DDDBE
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790725234; cv=none; b=jOKtHUDYnvxtuntR45P505Tqnay9y4BhOcIm1j86xSIm/0SGVnF1xzo5pe++WDO9kF7qhJ3STR7gNDZ8YlVVwMhJYF0um/bbsFRLeD2pbGDYFI6RTHL7lqvmohoWRoCqANKZNxZsqEt4tCehv58EDp4OxUz00LhvDN2o9zeVGFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790725234; c=relaxed/simple;
	bh=ZQ8036cty6Y//HSR10pOiRjqFu8epa97JVuHXf3HJeA=;
	h=To:Subject:From:Message-Id:Date; b=sZWA+O3WswXPQfQsWv14Fzzka+fZ0MwnpCV7uy4Rifr0NAZ0LIG6yZMyXwlTZFWUo5acuvjOmdpKFhm3koBeSJx8gAhJfk2q7JxjGQic1oDlD8+Sk5hSOp4JDiutIEsqCFJgX8HgKGyfiQK13BiZu4AhI7MmKAHMjM0BZ2vgLuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odFycB8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odFycB8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5647C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790725233;
	bh=ZQ8036cty6Y//HSR10pOiRjqFu8epa97JVuHXf3HJeA=;
	h=To:Subject:From:Date:From;
	b=odFycB8FIUDQTbbqMfJgp28Ud3kPfi4AwIsg63pkf7pP4d/W+eXa0TPZzNWe1Lyd1
	 bZIaKGQJIp8DegG2wDy12d0VgPZjBEAvx0+PLuU2/Vz/Xf1PJhwlBaHIP2URo495R7
	 iPx1byO7apBOi4w1BEEnP9hK7vQMQ8fw/jN/XahsIqOzfyS1k/ai0Ht4tnnO+BqEDN
	 9du2bsJNjZJQb5EMHmqgSY/RO5YW5gx4IX5sd+qGVhbHrYZWEQw8B4Ag5OO77h/Sbu
	 eum16ZJVhBaOsj/y5P/UeJii/sbayqEnNVbyyjwgadU4U0idluAzLkrSo3V8GD2guB
	 t/IsykLMYDU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE77DCA5FAD
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072523369.21630.8055842718931185434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb9cce77d965d9bb062af38795fdda656d56d1ce7c842a8e7f760593204586b
Date: Tue, 29 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790725233
