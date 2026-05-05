Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45E1211A14
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777940254; cv=none; b=XI66BBRtfskVHUqebkp7LoQw1pjkYzt4RzWm0sg3xbrdbMC7e52sj/aaNfNRNIIBmedbZLa+Zd+gEuHYyL9Tr2wW8Fzj3/USJqC+RnPyv0ZvMuoNYLkNmRqThyJVn/taKFUR0wdLGuUfMtZ4VMXZ1ZQCZ3OOPyB1LN5wuOFvQ8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777940254; c=relaxed/simple;
	bh=htO5+6bZIPCq/cacP7XJYlnVWM/9XqL33pVRKJPYbKI=;
	h=To:Subject:From:Message-Id:Date; b=caGtDoqYCGKFF9Kg0VBz8+yC1IQoYPq/9BmvInq6QcSkRrVu+dhXZiniW+RSx4h/H+XTcjbOkr/8wb8xyljLbaz9LwczSODxqbvNJa2sJjB9H8yFtqtLpyPeRT6dwYhI0BWjBz2XQvhxq2D7JG8fs5SakIZwy1VK/CxfZ+VMuQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaMYfjfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaMYfjfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC385C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777940253;
	bh=htO5+6bZIPCq/cacP7XJYlnVWM/9XqL33pVRKJPYbKI=;
	h=To:Subject:From:Date:From;
	b=aaMYfjfEuP6D4reKcABq/jWtgj7MiMOP9uyKxN5MDCKAZ8eQkqjX0OpJ1sbDbEOky
	 1a3vEQEV4Wtgp7ehtqtmzU2GWfDYmlcF1NhFL3WZgr7Qy7Kvw2f5am3N5nmSpUZtSV
	 dSpb/DCw/rDFwVFsw7Zk8pe8pIC76m6akZ8bQbbOCywyfgOL3H0V3O08RtyXtI2Tv4
	 q6BJ8VlA5AmUCYivQ5Xwk8XOFk9uDyUmcls7Nl9bB9KHSmYVjdI5XR/mdaxhEPefiq
	 H06oLD0h3VTXG6es6GMj/2jF7A8aw9j0XAJdZITFMh4qD6ZTlkwg6/N/KQk/m8POIm
	 WGZMJJ2Tm/0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31EFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794025369.2463.18155324655744983837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b2aac8ef0f0b6ed8a2141ebe8972b1fc7baab61723a3422122223487db5c7a
Date: Tue, 05 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777940253
