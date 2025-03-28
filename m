Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881382899
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743205794; cv=none; b=o5futcf4AY7kbGWeaMM3/tWXyV6nSytdxWm7lGYr2xirL1u9YargR6NuMXXtKHI7ALDIckO9yuJv5u6GPDp5E+Mi5MziBYJvykUysUA+ybIEpcNEjc5pf1CER31ve+HwVbqj2hwtoTWpgdP33rb4/b46LTQ5CGmGzBl9NGw5Hfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743205794; c=relaxed/simple;
	bh=jdNnxnximGH8q0c/mlS923qsZAYZfOMG7FKeirF0xPE=;
	h=To:Subject:From:Message-Id:Date; b=eWOiafinOMMy0OflqSoCJ4Z7YgjYKvFaVRG7qYXSVN+iFPAhhJ/Zn1yMzWlCH+7DeJTZK71KneSsHfuprZpxIZhT+3K2EZ5wjgZhqAUSQzlLNzJUwfKNr9mfd2/0iVgjcY7fJKOntiAknJcvTpYS3eZ+u8bZEx8c2/iJN+bgDo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnA7DlCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnA7DlCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2270C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743205793;
	bh=jdNnxnximGH8q0c/mlS923qsZAYZfOMG7FKeirF0xPE=;
	h=To:Subject:From:Date:From;
	b=XnA7DlCX59RawYbCHQA9C55n8BmGQlL0Q69mhKOqXga3tjw47F7I7jzme1smzEkhv
	 ejjTJd23lUU55B1RzBsysn3oBS1wj6ODvL/dMV/3fw9o7KPTtE8joNq9hGtGv41d44
	 d/WASqfEaxmVZRPB5v6hHBOPCF3ACEQLLundoQb9oyHLLdEEvF0C0bq1VaBFSIr2zu
	 /MhXfIsoqguT0Hnd3cWm/jP0em+PNhPuC6PB/Js+Ob6f3PQ8HKdB9haT91XtTIr8RA
	 6VNgc+1tiUzSQpdc+63yTBvYmuQ+2ycESU+5xhar2XmTbveJKRdPMZykq49qFMF15n
	 4/jI36x3HUHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDE1C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320579364.9281.11610293580475292537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38811b950e9851665afb2e34b1c8e3f71b522d3a527be033ca6f39e52095930e
Date: Fri, 28 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743205793
