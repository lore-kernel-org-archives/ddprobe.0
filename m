Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E7241C8B
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709247496; cv=none; b=QMoWdephIyjQyg+WlK+FgKXtoCp18MshGoPyIY7mm1Wq2ISSiI1bVRuGtiCbQbXA/OveSGV0UYHGtOjAEHbvW9hIDP3k/yIKcCKInkmZ1QZ5JSwZ5AoSXEhOzf8n398ekqkG3ffsfAFMtOoWPJielWAYncAW6Gas8YRMJYMe14w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709247496; c=relaxed/simple;
	bh=4NXGDSV6DIxv0ReEUt0Gg+yr9pq8+LcvgV41hMX4WIo=;
	h=To:Subject:From:Message-Id:Date; b=gyqHevKp/LRra90rAXQY9XwgTpHvOqI3UUxsfF2CLFJXHggXMJA9t9B23TjO2iFZ65hfudwd028Mtz5KMWhBQ/oiVWS86/Qy5tnfb187Yedn9e/rdN0l4XJiWUVK9J1eUBMycK6tk+mpajFWEYjjU6+YywPMUyyxJFGMYp6d7S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQypq3XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQypq3XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7718FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709247496;
	bh=4NXGDSV6DIxv0ReEUt0Gg+yr9pq8+LcvgV41hMX4WIo=;
	h=To:Subject:From:Date:From;
	b=kQypq3XTiUQULEzidk8BLy0A44MytvTZFWYH9yuJHxsofDGbyqd9lYcUKLlwX3x4Y
	 mvKPRJpiDqAYgwQAThmKDunIKjoyhmsSSPgXyllgxcNG2LHMXcU6zlZ8w/wjbSwWEj
	 OkI0X8lIW9x0JfQQbbTWkoYj8GaAMO6ADXvM1DDwOljRfi0Hmju2gPT3xArFEWTsUn
	 CeFvdBroLEZnQNWgOLa/Jyy7nG6rLqQR1yYKd6xaEysqoRHCROvviGDiGtUIZzlce4
	 JjDHHymTH4hWC8kKmJpxK0Z9MPS6E92c1yPWAMgBLU1vQU3fxKoEGJ5EXTbBg9MWz9
	 /8+EnL+9C8KfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EEA0C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170924749638.11475.8273869828536308852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c174a0d27bb15dc32442988e41ca7e44734166e21d783f5d4dbe280d9efae3
Date: Thu, 29 Feb 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709247496
