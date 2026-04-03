Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FC839903E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775210134; cv=none; b=BQbN2HBoLhcnfH6MxSxa6zcUadSSUt+XQYzYH5y6bfC3ZeUvpBevQHpuxdbTj7d0t4fAmAHDz6+2kn+y4xaxpotvKKP/fJB8KslPTP7q5QGe1wNct1kdR+WKxGjS+cS5Zb12GSTCYVzKv0RUBH9+vukfavFsLFnJ5AvLo/awYj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775210134; c=relaxed/simple;
	bh=qJPeSbUKb+BuqztLEUjGgFjjmxEoWI2OeWmH4Q0nze4=;
	h=To:Subject:From:Message-Id:Date; b=qZQ2+w0ja+luvNyK9L2uierYEmIAX83ZHzaNTJ98FcXhQsDQhoe3RfCULNuiIHKpeJNOkrTL6FI/i5HpcuEIKrif9CmIXi1D4W/7Rl0MgVMoTOZlK5SFz+5QIr/e0aT7eBsgWmBSNk9EB3e4vGI3aOodHg066R3g78MDPtXdLNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzSllXYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzSllXYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2081C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775210133;
	bh=qJPeSbUKb+BuqztLEUjGgFjjmxEoWI2OeWmH4Q0nze4=;
	h=To:Subject:From:Date:From;
	b=uzSllXYNf7x1vMt4vl76133hHgAKfpo3vZ9ME2Xj1DQ+si5wLCawJ4UCCFsrQGtL6
	 s0qHMpaIkNWt9/Lb0WHnUzjAcwi6+44e/Ruo6RidL0KK2N1mZ0eRXe0hB0AkuK6hX8
	 308+sb1q36ARf9V43ph8Xavfzv8b7wRQN2CbCu2LbKYevU+WvwWp3XR+lFJePkIBJf
	 S0VxX8uOKm7HD2RzBNJJzxwa3I+JBQhS2eqKW91wGMwPkhmD9IZd6uMYcGPuQ4NSOW
	 Rf6d13+G+ToveJtD8bfPJhUrHvVi5bpryL3NSe9Rf0xVqOLBk7OpQmJb3tbCGlifFE
	 qWCZyU6f7VDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA8BE7E35E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521013369.28511.7387793289881213940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8839397b6182d0000f054feef318237552b5614e2d7c837858e0d0dc73d5e4
Date: Fri, 03 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775210133
