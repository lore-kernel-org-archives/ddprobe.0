Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A783C465
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748296794; cv=none; b=p6cTdt1XUt1XLBoIjmp+r2oonXo0ghVwFcClPfKmUmDmf0uxzqDAYeYFqknNEgQYv4dR32WV8E6cQeyIgkSEBMjTY9pefod/WWhTle0DT+Y1oBGs15y0G6hNKhUKSW6btYkRbqHYGElUhQqQWot73xsXHR6zZoV5MYcHgOlmc+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748296794; c=relaxed/simple;
	bh=mlSbsxQGyxIiAHghiVd2ooHveOB1JlLnXnOYzjxaEcY=;
	h=To:Subject:From:Message-Id:Date; b=eK8LK/+lZq2+Buj6WGOncYnEG8nKN0swmG28+m/xVvQA0WyqnD7vsInEieSGNSRBuSeUU9lA/dgBukn/SFJ09TS0AFMzXo6/hQsM+So2gLaR30AQdKOMp4bTMZEjOE+FKVjiUH6g6UhkIMeGu0FhgtnWLWAjPez0k2GcBFRhMdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0lM0ZQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0lM0ZQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748296793;
	bh=mlSbsxQGyxIiAHghiVd2ooHveOB1JlLnXnOYzjxaEcY=;
	h=To:Subject:From:Date:From;
	b=E0lM0ZQVuHbWOOOpZZVcEA6Z9i1jWr/g+ywGR4kMhAUR9hNjhNw3fVKz43kCezBmS
	 F/fdjbH7Ueq/lO2dIt2CxYLX7MJSjSS3K17a+qKLILDgX1PvgxCOpb7IR3W6AHeYDc
	 eo643l60F2AkPzT8hGDGnZhcwMKl8GtCAgO3lLoQ4q7q7L+WHlDJei7crc3ErltpRv
	 c9ECXUEPntk6GfHPpw3AZgZ4b6jhl1aqiX+tC9144gcOrFmUH+YjBFjMXSbG/rHon5
	 1rDEg4wInfbKk+QziTdn8aU9ESwRI01WzLDro+lzQlnpnFEYx0deZQJOcsviA3+2ml
	 icwAIOLxGv32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED71C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829679357.8780.2617917350457088179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3f3a40c76a62f1da61aecca7bf91a9f1cde856cf8b3cdf2671170b4ae70c6b
Date: Mon, 26 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748296793
